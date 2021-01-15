import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacation_app/src/3finalhomesrc.dart';
import 'package:vacation_app/src/4drawerScreen.dart';

class ShowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), HomeScreen()],
      ),
    );
  }
}
