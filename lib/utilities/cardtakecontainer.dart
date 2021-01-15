import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

Container cardTakeContainer({Widget child}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 32),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(24),
      ),
      color: kluckypointcolor,
      boxShadow: [
        BoxShadow(
          color: kluckypointcolor,
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
    width: 380,
    child: child,
  );
}
