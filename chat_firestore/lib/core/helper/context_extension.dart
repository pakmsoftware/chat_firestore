import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  double get maxWidth => MediaQuery.of(this).size.width;
}
