import 'package:flutter/material.dart';
import 'package:vacation_app/src/1loginsrc.dart';
import 'package:vacation_app/constant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // ignore: deprecated_member_use
          primaryColor: kluckypointcolor,
          accentColor: kluckypointcolor,
          textTheme: TextTheme(body1: TextStyle(color: kgreycolor600))),
      home: LoginPage(),
    );
  }
}
