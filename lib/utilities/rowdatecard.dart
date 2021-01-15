import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

Row rowDateCard({String title, String date}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        title,
        textAlign: TextAlign.center,
        style: rowCardTextStyle,
      ),
      Text(
        date,
        textAlign: TextAlign.center,
        style: rowCardTextStyle,
      ),
    ],
  );
}
