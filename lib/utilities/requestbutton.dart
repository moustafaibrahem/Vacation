import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';
import 'package:vacation_app/utilities/buttoncontainer.dart';

class ConfirmationRequestButton extends StatelessWidget {
  const ConfirmationRequestButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buttonContainer(
      color: kshamrockcolor,
      button: MaterialButton(
        child: Text(
          "Confirmation The Request",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: kwhitecolor),
        ),
        onPressed: () {},
      ),
    );
  }
}
