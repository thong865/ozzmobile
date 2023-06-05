import 'package:flutter/cupertino.dart';
import 'package:ohaomob/icpainclass/user_ic.dart';

class webelight {
  static Widget getUserDuotone(double height_width) {
    return Container(
      child: RepaintBoundary(
        child: CustomPaint(
          size: Size(height_width, height_width),
          foregroundPainter: UserDuotone(),
        ),
      ),
    );
  }
}
