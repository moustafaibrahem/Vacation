import 'package:flutter/material.dart';
//******************************************************************************
//******************************************************************************
//******************************************************************************
//****************************** Color *****************************************

Color kluckypointcolor = Color(0xff222643);
Color kshamrockcolor = Color(0xff23D297);
Color kgreencolor = Colors.green.withOpacity(0.65);
Color kwhitecolor = Colors.white;
Color kgrey100color = Colors.grey.shade100;
Color kgreybackgroundcolor = Colors.grey[200];
Color kgreycolor600 = Colors.grey.shade600;
Color kblackcolor = Colors.black.withOpacity(0.075);

//******************************************************************************
//******************************************************************************
//******************************************************************************
//**************************** Sized Box ***************************************

final spaceHeight10 = SizedBox(height: 10);
final spaceHeight15 = SizedBox(height: 15);
final spaceHeight20 = SizedBox(height: 20);
final spaceHeight25 = SizedBox(height: 25);
final spaceHeight35 = SizedBox(height: 35);
final spaceHeight50 = SizedBox(height: 50);
final spaceHeight120 = SizedBox(height: 120);
final spaceHeight140 = SizedBox(height: 140);
final spaceHeight240 = SizedBox(height: 240);

final spaceWidth10 = SizedBox(width: 10);
final spaceWidth20 = SizedBox(width: 20);

//******************************************************************************
//******************************************************************************
//******************************************************************************
//************************* Box of person image ********************************

BoxDecoration decoImageBox = BoxDecoration(
  shape: BoxShape.circle,
  color: kgrey100color,
  boxShadow: [
    BoxShadow(
      color: kblackcolor,
      offset: Offset(10, 10),
      blurRadius: 10,
    ),
    BoxShadow(
      color: kwhitecolor,
      offset: Offset(-10, -10),
      blurRadius: 10,
    ),
  ],
);

BoxDecoration decoImageBoxInvert = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: kblackcolor,
  boxShadow: [
    BoxShadow(
      color: kwhitecolor,
      offset: Offset(3, 3),
      blurRadius: 3,
      spreadRadius: -3,
    ),
  ],
);

//******************************************************************************
//******************************************************************************
//******************************************************************************
//***************************** Box of Icon ************************************

// ignore: non_constant_identifier_names
List<BoxShadow> IconShadowList = [
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
];

//******************************************************************************
//******************************************************************************
//******************************************************************************
//************************ Box Shadow of container *****************************

List<BoxShadow> approvedBoxShadow = [
  BoxShadow(
    color: kluckypointcolor,
    offset: Offset(3, 3),
    blurRadius: 8,
  ),
  BoxShadow(
    color: kwhitecolor,
    offset: Offset(-3, -3),
    blurRadius: 8,
  ),
];

List<BoxShadow> rejectionBoxShadow = [
  BoxShadow(
    color: kblackcolor,
    offset: Offset(5, 5),
    blurRadius: 10,
  ),
  BoxShadow(
    color: kwhitecolor,
    offset: Offset(-5, -5),
    blurRadius: 10,
  ),
];

//******************************************************************************
//******************************************************************************
//******************************************************************************
//**************************** pi_chart ****************************************

bool toggle = false;
Map<String, double> dataMap = Map();
List<Color> colorList = [
  kluckypointcolor,
  kshamrockcolor,
];

//******************************************************************************
//******************************************************************************
//******************************************************************************
//****************************** TextStyle *************************************
TextStyle personNameTextStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
TextStyle locationTextStyle = TextStyle(fontWeight: FontWeight.w200);
TextStyle jopTextStyle = TextStyle(fontSize: 20);
TextStyle companyLogoutTextStyle =
    TextStyle(color: kwhitecolor, fontWeight: FontWeight.bold, fontSize: 11);
TextStyle activeTextStyle =
    TextStyle(color: kshamrockcolor, fontWeight: FontWeight.bold, fontSize: 11);
TextStyle rowCardTextStyle =
    TextStyle(fontSize: 18, color: kwhitecolor, fontWeight: FontWeight.w300);
TextStyle approvedTextStyle =
    TextStyle(fontSize: 26, color: kwhitecolor, fontWeight: FontWeight.w700);
TextStyle rejectedTextStyle =
    TextStyle(fontSize: 26, color: kgreycolor600, fontWeight: FontWeight.w700);
TextStyle approvedDateTextStyle =
    TextStyle(fontSize: 20, color: kwhitecolor, fontWeight: FontWeight.w300);
TextStyle rejectedDateTextStyle =
    TextStyle(fontSize: 20, color: kgreycolor600, fontWeight: FontWeight.w300);
TextStyle nameReqTextStyle =
    TextStyle(fontSize: 24, color: kwhitecolor, fontWeight: FontWeight.w700);
TextStyle jopReqTextStyle =
    TextStyle(fontSize: 20, color: kwhitecolor, fontWeight: FontWeight.w300);

//******************************************************************************
//******************************************************************************
//******************************************************************************
//****************************** Vacations *************************************
