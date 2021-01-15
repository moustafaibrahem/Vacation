import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacation_app/constant.dart';
import 'package:vacation_app/utilities/personimage.dart';
import 'package:vacation_app/utilities/personname.dart';
import 'package:vacation_app/utilities/personlocation.dart';
import 'package:vacation_app/utilities/personaljob.dart';
import 'package:vacation_app/utilities/piechartshap.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //***************************************************************************
  //Animation of menu
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  //***************************************************************************
  //pi_chart
  bool toggle = false;
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    kluckypointcolor,
    kshamrockcolor,
  ];
  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("vacations available", () => 7);
    dataMap.putIfAbsent("vacations taken", () => 3);
  }

  //***************************************************************************
  //***************************************************************************

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 150),
      decoration: BoxDecoration(
          color: kgreybackgroundcolor,
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            spaceHeight50,
            buildmenuiconContainer(),
            spaceHeight15,
            PersonImageContainer(),
            spaceHeight15,
            PersonNameContainer(),
            spaceHeight15,
            PersonLocationContainer(),
            spaceHeight15,
            PersonalJobContainer(),
            spaceHeight140,
            PieChartContainer(dataMap: dataMap, colorList: colorList),
            spaceHeight140,
          ],
        ),
      ),
    );
  }

  Container buildmenuiconContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: isDrawerOpen
                ? IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(
                        () {
                          xOffset = 0;
                          yOffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        },
                      );
                    },
                  )
                : IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      setState(
                        () {
                          xOffset = 235;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen = true;
                        },
                      );
                    },
                  ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kgrey100color,
              boxShadow: IconShadowList,
            ),
          ),
        ],
      ),
    );
  }
}
