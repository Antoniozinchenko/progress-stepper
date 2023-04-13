import 'package:flutter/material.dart';

class ProgressClipper extends CustomClipper<Path> {
  final double width;

  ProgressClipper({required this.width});
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(width, 0)
      ..relativeLineTo(20, size.height / 2)
      ..lineTo(width, size.height)
      ..lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
