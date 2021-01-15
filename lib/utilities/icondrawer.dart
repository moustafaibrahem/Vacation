import 'package:flutter/material.dart';
import 'package:vacation_app/constant.dart';

class IconDrawer extends StatelessWidget {
  final IconData icon;
  final String title;
  final screen;
  IconDrawer({this.icon, this.title, this.screen});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => screen));
            },
            child: Icon(
              icon,
              color: kwhitecolor,
              size: 15,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                color: kwhitecolor, fontWeight: FontWeight.bold, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
