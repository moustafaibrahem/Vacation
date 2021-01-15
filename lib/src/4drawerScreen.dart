import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacation_app/constant.dart';
import 'package:vacation_app/src/4forthscreen.dart';
import 'package:vacation_app/src/5secondscreen.dart';
import 'package:vacation_app/src/6thirdscreen.dart';
import 'package:vacation_app/utilities/icondrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kluckypointcolor,
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.account_box,
                size: 20,
                color: kwhitecolor,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Company\'s name',
                    style: companyLogoutTextStyle,
                  ),
                  Text(
                    'Active Status',
                    style: activeTextStyle,
                  ),
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              IconDrawer(
                  icon: FontAwesomeIcons.plus,
                  title: 'Take vacation',
                  screen: SecondScreen()),
              IconDrawer(
                  icon: Icons.schedule,
                  title: 'Previous vacations',
                  screen: ThirdScreen()),
              IconDrawer(
                  icon: Icons.live_help,
                  title: 'Request',
                  screen: ForthScreen()),
            ],
          ),
          Row(
            children: [
              spaceWidth10,
              Container(
                width: 1,
                height: 20,
                color: kwhitecolor,
              ),
              spaceWidth10,
              Text(
                'Log out',
                style: companyLogoutTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
