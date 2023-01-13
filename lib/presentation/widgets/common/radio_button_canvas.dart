import 'package:flutter/material.dart';

/// [DrawCircle] canvas for custom radio button
class DrawCircle extends CustomPainter {
  final bool isSelected;
  final bool unSelectedBorderActive;
  DrawCircle({
    this.isSelected = false,
    this.unSelectedBorderActive = false,
  });
  var paint1 = Paint()..color = Color(0xFF6345C3);
  var paint2 = Paint()..color = Colors.white;
  var paint3 = Paint()..color = Color(0xFF14171A);
  @override
  void paint(Canvas canvas, Size size) {
    if (isSelected) {
      canvas.drawCircle(const Offset(10.0, 10.0), 14.0, paint1);
      canvas.drawCircle(const Offset(10.0, 10.0), 5.0, paint2);
    } else if (unSelectedBorderActive) {
      canvas.drawCircle(const Offset(10.0, 10.0), 14.0, paint3);
      canvas.drawCircle(const Offset(10.0, 10.0), 12.0, paint2);
    } else {
      canvas.drawCircle(const Offset(10.0, 10.0), 14.0, paint3);
      canvas.drawCircle(const Offset(10.0, 10.0), 12.0, paint2);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
