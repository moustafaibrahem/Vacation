import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

Container buttonContainer({MaterialButton button, Color color}) {
  return Container(
    width: 380,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      color: color,
      boxShadow: [
        BoxShadow(
          color: color,
          offset: Offset(5, 5),
          blurRadius: 10,
        ),
        BoxShadow(
          color: kwhitecolor,
          offset: Offset(-5, -5),
          blurRadius: 10,
        ),
      ],
    ),
    child: button,
  );
}
