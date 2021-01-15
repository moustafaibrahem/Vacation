import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacation_app/utilities/backgroundSignIn.dart';
import 'package:vacation_app/utilities/headerField.dart';
import 'package:vacation_app/utilities/textFields.dart';
import 'package:vacation_app/utilities/signinRow.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignIn(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  getHeader(),
                  getTextFields(),
                  getSignIn(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
