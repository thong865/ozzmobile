import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';

//Copy this CustomPainter code to the Bottom of the File
class UserDuotone extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6131696, size.height * 0.5937500);
    path_0.lineTo(size.width * 0.3868304, size.height * 0.5937500);
    path_0.cubicTo(size.width * 0.1732366, size.height * 0.5937500, 0,
        size.height * 0.7453125, 0, size.height * 0.9322266);
    path_0.cubicTo(
        0,
        size.height * 0.9696094,
        size.width * 0.03464286,
        size.height * 0.9999414,
        size.width * 0.07736607,
        size.height * 0.9999414);
    path_0.lineTo(size.width * 0.9226786, size.height * 0.9999414);
    path_0.cubicTo(size.width * 0.9654018, size.height, size.width,
        size.height * 0.9697266, size.width, size.height * 0.9322266);
    path_0.cubicTo(
        size.width,
        size.height * 0.7453125,
        size.width * 0.8267857,
        size.height * 0.5937500,
        size.width * 0.6131696,
        size.height * 0.5937500);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = ui.Color.fromARGB(255, 106, 106, 106).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7857143, size.height * 0.2500000);
    path_1.cubicTo(
        size.width * 0.7857143,
        size.height * 0.3880664,
        size.width * 0.6578125,
        size.height * 0.5000000,
        size.width * 0.5000000,
        size.height * 0.5000000);
    path_1.cubicTo(
        size.width * 0.3421875,
        size.height * 0.5000000,
        size.width * 0.2142857,
        size.height * 0.3880859,
        size.width * 0.2142857,
        size.height * 0.2500000);
    path_1.cubicTo(size.width * 0.2142857, size.height * 0.1119141,
        size.width * 0.3422098, 0, size.width * 0.5000000, 0);
    path_1.cubicTo(
        size.width * 0.6578125,
        0,
        size.width * 0.7857143,
        size.height * 0.1119336,
        size.width * 0.7857143,
        size.height * 0.2500000);
    path_1.close();
    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = ui.Color.fromARGB(255, 239, 23, 23).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
