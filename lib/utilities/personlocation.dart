import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

class PersonLocationContainer extends StatelessWidget {
  const PersonLocationContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Location'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: kshamrockcolor,
            ),
            Text(
              'Egypt',
              style: locationTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
