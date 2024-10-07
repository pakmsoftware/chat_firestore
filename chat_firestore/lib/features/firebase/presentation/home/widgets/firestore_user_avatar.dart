import 'dart:io';

import 'package:flutter/material.dart';

/// User avatar
class FirestoreUserAvatar extends StatelessWidget {
  const FirestoreUserAvatar({
    this.avatar,
    this.localFile,
    this.diameter = 64,
    this.borderWidth = 0,
    super.key,
  });

  /// Avatar network URL
  final String? avatar;

  /// Local file when avatar is changed
  final File? localFile;

  /// Avatar diameter in dp
  final double diameter;

  /// White border width
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: borderWidth,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(diameter),
        child: avatar != null && localFile == null
            ? Image.network(
                avatar!,
                width: diameter,
                height: diameter,
                fit: BoxFit.cover,
              )
            : (localFile != null
                ? Image.file(
                    localFile!,
                    width: diameter,
                    height: diameter,
                    fit: BoxFit.cover,
                  )
                : Container(
                    width: diameter,
                    height: diameter,
                    color: Colors.grey,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  )),
      ),
    );
  }
}
