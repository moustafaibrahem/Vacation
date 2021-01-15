import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacation_app/constant.dart';
import 'package:vacation_app/utilities/appbarrow.dart';
import 'package:vacation_app/utilities/buttoncontainer.dart';
import 'package:vacation_app/utilities/cardtakecontainer.dart';
import 'package:vacation_app/utilities/requestbutton.dart';
import 'package:vacation_app/utilities/rowdatecard.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:intl/intl.dart';
import 'dart:async';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  //****************************************************************************
  DateTime _startDate = DateTime.now().add(Duration(days: 1));
  DateTime _endDate = DateTime.now().add(Duration(days: 3));
  String day1;
  String day2;
  int _total = 2;
  Future displayDateRangePicker(BuildContext context) async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
      context: context,
      initialFirstDate: _startDate,
      initialLastDate: _endDate,
      firstDate: new DateTime(DateTime.now().year - 0),
      lastDate: new DateTime(DateTime.now().year + 1),
    );
    if (picked != null && picked.length == 2) {
      setState(() {
        _startDate = picked[0];
        _endDate = picked[1];
        day1 = DateFormat('dd').format(_startDate).toString();
        day2 = DateFormat('dd').format(_endDate).toString();
        _total = int.parse(day2) - int.parse(day1);
      });
    }
  }
  //****************************************************************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreybackgroundcolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          spaceHeight50,
          AppBarRow(title: "Take vacation", widthNumber: 100.0),
          spaceHeight120,
          buildCardContainer(),
          buttonContainer(
            color: kluckypointcolor,
            button: MaterialButton(
              child: Text(
                "Select Dates",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: kwhitecolor),
              ),
              onPressed: () async {
                await displayDateRangePicker(context);
              },
            ),
          ),
          spaceHeight240,
          ConfirmationRequestButton(),
        ],
      ),
    );
  }

  Container buildCardContainer() {
    return cardTakeContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          spaceHeight35,
          rowDateCard(
            title: "The vacation starts from : ",
            date: "${DateFormat('dd/MM/yyyy').format(_startDate).toString()}",
          ),
          spaceHeight35,
          rowDateCard(
            title: "Ends at : ",
            date: "${DateFormat('dd/MM/yyyy').format(_endDate).toString()}",
          ),
          spaceHeight35,
          rowDateCard(
            title: "The number of it is : ",
            date: "$_total Days",
          ),
          spaceHeight35,
        ],
      ),
    );
  }
}
