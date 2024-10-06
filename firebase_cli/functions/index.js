const { onRequest } = require("firebase-functions/v2/https");
const logger = require("firebase-functions/logger");
const functions = require('firebase-functions');
const admin = require('firebase-admin');
const { Message } = require("firebase-functions/v2/pubsub");

// Initialize Firebase Admin
admin.initializeApp();

const db = admin.firestore();
const fcm = admin.messaging();

exports.helloWorld = onRequest((request, response) => {
    logger.info("Hello logs!", { structuredData: true });
    response.send("Hello from Firebase!");
});

// Example of trigger function that updates chats with changed user FCM token
exports.updateChatUsersOnUserFcmTokenUpdate = functions.firestore
    .document('users/{userId}')
    .onUpdate(async (change, context) => {
        const previousData = change.before.data();
        const afterData = change.after.data();
        const oldFcmToken = previousData.fcmToken;
        const newFcmToken = afterData.fcmToken;
        const userId = afterData.id;

        // Ignore if fcm token is the same
        if (newFcmToken == oldFcmToken) {
            return;
        }

        // Else update all (100) chats with new fcm token
        // Firstly get all (100) chats with userId
        const chats = await db.collection('chats')
            .orderBy('lastMsgTimestamp', 'desc')
            .where('userIds', "array-contains", userId)
            .limit(100)
            .get();

        // Ignore for empty chats
        if (chats.docs.length == 0) {
            return;
        }

        // Otherwise update user in chat to have new fcm token
        chats.docs.forEach(async (chatSnap) => {
            const chatData = chatSnap.data();
            let users = chatData.users;
            const userIndex = users.findIndex(e => e.id == userId);
            if (userIndex == -1) {
                return;
            }
            // get user from list
            const oldUser = users[userIndex];

            // New user object with new fcm token
            const newUser = {
                fcmToken: newFcmToken,
                avatar: oldUser.avatar,
                name: oldUser.name,
                surname: oldUser.surname,
                id: oldUser.id,
            };

            users[userIndex] = newUser;
            // Update chat collection with new users array with updated user fcmToken
            db.collection('chats').doc(chatData.id).set({ users: users }, { merge: true });
        });


    });


// Cloud function that sends FCM push notification to message receivers
exports.sendNotificationOnMessageCreate = functions.firestore
    .document('chats/{chatId}/messages/{messageId}')
    .onCreate(async (snap, context) => {
        try {
            // Get chat message sent data to collection
            const messageData = snap.data();
            // Get chat message content to put in notification
            const content = messageData.content;
            // Get receivers to get their FCM Token
            const receivers = messageData.receivers;

            // Sender data
            const senderId = messageData.senderId;
            const senderSnap = await db.collection('users').doc(senderId).get();
            const senderData = senderSnap.data();
            // Get full name of user used for notification's title
            const senderFullName = senderData.name + ' ' + senderData.surname;

            // FCM Tokens to send notification to
            const tokens = [];

            // Get all receivers tokens
            receivers.forEach(async (receiver) => {
                const userId = receiver.id;
                const userDb = await db.collection('users').doc(userId).get();
                if (userDb == null) {
                    // Skip for not found user
                    return;
                }
                const userDbData = userDb.data();
                const fcmToken = userDbData.fcmToken;
                tokens.push(fcmToken);
            });
            // create notification payload
            const payload = {
                notification: {
                    title: senderFullName,
                    body: content,
                },
                data: {
                    messageId: messageData.id,
                    chatId: messageData.chatId,
                    senderId: senderId,
                },
                tokens: tokens,
            };

            // Send notification to tokens
            await fcm.send(payload);

        } catch (error) {
            logger.error('Error sending FCM notification: ', error);
        }

    });

