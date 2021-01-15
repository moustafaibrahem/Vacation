import 'package:flutter/material.dart';

getHeader() {
  return Expanded(
    flex: 3,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Welcome\nBack',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    ),
  );
}
