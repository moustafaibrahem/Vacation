import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

class AppBarRow extends StatelessWidget {
  final String title;
  final double widthNumber;
  const AppBarRow({this.title, this.widthNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kgrey100color,
                boxShadow: [
                  BoxShadow(
                    color: kblackcolor,
                    offset: Offset(10, 10),
                    blurRadius: 15,
                  ),
                  BoxShadow(
                    color: kwhitecolor,
                    offset: Offset(-10, -10),
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: kluckypointcolor,
              ),
            ),
          ),
          SizedBox(
            width: widthNumber,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
