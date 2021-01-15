import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

class BackgroundSignIn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    //**************************************************************************
    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = kgrey100color;
    canvas.drawPath(mainBackground, paint);

    //**************************************************************************
    Path luckypoint = Path();
    luckypoint.lineTo(sw, 0);
    luckypoint.lineTo(sw, sh * 0.1);
    luckypoint.cubicTo(
        sw * 0.95, sh * 0.15, sw * 0.65, sh * 0.15, sw * 0.6, sh * 0.38);
    luckypoint.cubicTo(sw * 0.52, sh * 0.52, sw * 0.05, sh * 0.45, 0, sh * 0.4);
    luckypoint.close();
    paint.color = kluckypointcolor;
    canvas.drawPath(luckypoint, paint);

    //**************************************************************************
    Path shamrock = Path();
    shamrock.lineTo(sw * 0.7, 0);
    shamrock.cubicTo(
        sw * 0.6, sh * 0.05, sw * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
    shamrock.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
    shamrock.close();
    paint.color = kshamrockcolor;
    canvas.drawPath(shamrock, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
