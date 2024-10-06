/// Status of sent message
/// Read information is read from firestore per receiver
enum FirestoreChatMessageStatus {
  /// By default status of message that is added by user
  sending,

  /// Sent -> Message was succesfully added to Firestore
  sent
}
