import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

class PersonalJobContainer extends StatelessWidget {
  const PersonalJobContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Flutter App Developer',
      textAlign: TextAlign.center,
      style: jopTextStyle,
    );
  }
}
