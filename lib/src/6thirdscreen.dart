import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacation_app/constant.dart';
import 'package:vacation_app/utilities/appbarrow.dart';
import 'package:flip_card/flip_card.dart';
import 'package:intl/intl.dart';
import 'package:vacation_app/classes/prevacation.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreybackgroundcolor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            spaceHeight50,
            AppBarRow(title: "Previous vacations", widthNumber: 90),
            spaceHeight35,
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: prevVacation.map((vacation) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 32),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                        color: vacation.isApproved
                            ? kluckypointcolor
                            : kgrey100color,
                        boxShadow: vacation.isApproved
                            ? approvedBoxShadow
                            : rejectionBoxShadow,
                      ),
                      child: FlipCard(
                        direction: FlipDirection.VERTICAL,
                        front: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_offer,
                                      color: vacation.isApproved
                                          ? kwhitecolor
                                          : kgreycolor600,
                                      size: 24,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Vacation",
                                      style: TextStyle(
                                        color: vacation.isApproved
                                            ? kwhitecolor
                                            : kgreycolor600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            spaceHeight10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  vacation.isApproved ? "Approved" : "Rejected",
                                  style: vacation.isApproved
                                      ? approvedTextStyle
                                      : rejectedTextStyle,
                                ),
                              ],
                            ),
                            spaceHeight10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "${vacation.total.toInt()} Days",
                                  style: TextStyle(
                                      color: vacation.isApproved
                                          ? kwhitecolor
                                          : kgreycolor600,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 36,
                                  color: vacation.isApproved
                                      ? kwhitecolor
                                      : kgreycolor600,
                                ),
                              ],
                            ),
                          ],
                        ),
                        back: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_offer,
                                      color: vacation.isApproved
                                          ? kwhitecolor
                                          : kgreycolor600,
                                      size: 24,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Vacation",
                                      style: TextStyle(
                                        color: vacation.isApproved
                                            ? kwhitecolor
                                            : kgreycolor600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            spaceHeight15,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "${DateFormat('EEEE').format(vacation.startDate).toString()}",
                                  style: vacation.isApproved
                                      ? approvedDateTextStyle
                                      : rejectedDateTextStyle,
                                ),
                                Text(
                                  "${DateFormat('dd/MM/yyyy').format(vacation.startDate).toString()}",
                                  style: vacation.isApproved
                                      ? approvedDateTextStyle
                                      : rejectedDateTextStyle,
                                ),
                              ],
                            ),
                            spaceHeight15,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "${DateFormat('EEEE').format(vacation.endDate).toString()}",
                                  style: vacation.isApproved
                                      ? approvedDateTextStyle
                                      : rejectedDateTextStyle,
                                ),
                                Text(
                                  "${DateFormat('dd/MM/yyyy').format(vacation.endDate).toString()}",
                                  style: vacation.isApproved
                                      ? approvedDateTextStyle
                                      : rejectedDateTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
