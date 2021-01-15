import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacation_app/constant.dart';
import 'package:pie_chart/pie_chart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState(); //******** pi_chart ***************
    dataMap.putIfAbsent("vacations available", () => 7);
    dataMap.putIfAbsent("vacations taken", () => 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgrey100color,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      /*Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kgreycolor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.075),
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                            BoxShadow(
                              color: kwhitecolor,
                              offset: Offset(-10, -10),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.menu,
                          color: kluckypointcolor,
                        ),
                      ),*/
                      gsd(fun, Icons.menu)
                    ],
                  ),
                  spaceHeight15,
                  Container(
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
                  ),
                  spaceHeight15,
                  Text(
                    'Moustafa Ibrahem',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Egypt',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  spaceHeight15,
                  Text(
                    'Flutter App Developer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  spaceHeight35,
                  spaceHeight35,
                  spaceHeight35,
                  //***********************************************************
                  Container(
                    child: Center(
                      child: toggle
                          ? PieChart(
                              dataMap: dataMap,
                              animationDuration: Duration(milliseconds: 800),
                              chartLegendSpacing: 32.0,
                              chartRadius:
                                  MediaQuery.of(context).size.width / 2.7,
                              showChartValuesInPercentage: true,
                              showChartValues: true,
                              showChartValuesOutside: false,
                              chartValueBackgroundColor: Colors.grey[200],
                              colorList: colorList,
                              showLegends: true,
                              legendPosition: LegendPosition.right,
                              decimalPlaces: 1,
                              showChartValueLabel: true,
                              initialAngle: 0,
                              chartValueStyle: defaultChartValueStyle.copyWith(
                                color: Colors.blueGrey[900].withOpacity(0.9),
                              ),
                              chartType: ChartType.disc,
                            )
                          : Text("Press FAB to show chart"),
                    ),
                  ),

                  //***********************************************************
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: gsd(togglePieChart, Icons.insert_chart),
    );
  }

  void togglePieChart() {
    setState(() {
      toggle = !toggle;
    });
  }

  void fun() {}
}

GestureDetector gsd(Function f, IconData icon) {
  return GestureDetector(
    onTap: f,
    child: Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kgrey100color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.075),
            offset: Offset(10, 10),
            blurRadius: 10,
          ),
          BoxShadow(
            color: kwhitecolor,
            offset: Offset(-10, -10),
            blurRadius: 10,
          ),
        ],
      ),
      child: Icon(
        icon,
        color: kluckypointcolor,
      ),
    ),
  );
}
