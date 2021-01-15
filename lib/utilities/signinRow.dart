import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';
import 'package:vacation_app/src/2firstsrc.dart';

getSignIn(context) {
  return Expanded(
    flex: 2,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Sign in',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ShowScreen(),
              ),
            );
          },
          child: CircleAvatar(
            backgroundColor: kluckypointcolor,
            radius: 40,
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
