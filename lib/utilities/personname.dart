import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

class PersonNameContainer extends StatelessWidget {
  const PersonNameContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Moustafa Ibrahem',
      style: personNameTextStyle,
    );
  }
}
