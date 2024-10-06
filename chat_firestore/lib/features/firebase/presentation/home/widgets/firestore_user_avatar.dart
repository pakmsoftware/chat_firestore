import 'dart:io';

import 'package:flutter/material.dart';

/// User avatar
class FirestoreUserAvatar extends StatelessWidget {
  const FirestoreUserAvatar({
    this.avatar,
    this.localFile,
    this.diameter = 64,
    super.key,
  });

  /// Avatar network URL
  final String? avatar;

  /// Local file when avatar is changed
  final File? localFile;

  /// Avatar diameter in dp
  final double diameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
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
                  )),
      ),
    );
  }
}
