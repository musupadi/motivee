import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width - 10, size.height / 2);
    path.lineTo(size.width - 15, size.height / 2 - 5);
    path.moveTo(size.width - 10, size.height / 2);
    path.lineTo(size.width - 15, size.height / 2 + 5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
