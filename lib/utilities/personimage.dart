import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

class PersonImageContainer extends StatelessWidget {
  const PersonImageContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: decoImageBox,
      child: Container(
        decoration: decoImageBox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/1.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
