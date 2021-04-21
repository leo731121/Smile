import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BgStyle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()..color = Color(0xffEFE5D5);

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1050000, size.height);
    path_0.lineTo(size.width * 0.1050000, 0);
    path_0.quadraticBezierTo(size.width * 0.9675000, size.height * 0.1950000,
        size.width, size.height * 0.3600000);
    path_0.quadraticBezierTo(size.width * 1.0012500, size.height * 0.5250000,
        size.width, size.height);
    path_0.lineTo(size.width * 0.1050000, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class FrontDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint_0.shader = ui.Gradient.linear(
      Offset(size.width * 0.20, size.height * 0.46),
      Offset(size.width * 0.30, size.height * 0.46),
      [
        Color(0xffC0C1EA),
        Color(0xff30327F).withOpacity(0.9),
      ],
    );

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.7500000);
    path_0.quadraticBezierTo(size.width * -0.0337500, size.height * 0.2900000,
        size.width * 0.0500000, size.height * 0.0700000);
    path_0.cubicTo(
        size.width * 0.0950000,
        size.height * -0.0225000,
        size.width * 0.8687500,
        size.height * 0.1925000,
        size.width * 0.8700000,
        size.height * 0.3400000);
    path_0.quadraticBezierTo(size.width * 0.8837500, size.height * 0.4675000,
        size.width * 0.8750000, size.height * 0.7550000);
    path_0.lineTo(0, size.height * 0.7500000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
