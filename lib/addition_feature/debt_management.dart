import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DebtManagement extends StatefulWidget {
  const DebtManagement({super.key});

  @override
  State<DebtManagement> createState() => _DebtManagementState();
}

class _DebtManagementState extends State<DebtManagement> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 34, 36),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Debt Management',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: h * .03,
            ),
            Container(
              height: h * .2 / 1.5,
              width: w / 1.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Debt',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: h * .02,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  Text(
                    '\$4535.59',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: h * .02,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * .2 / 1.5,
                  width: w / 2 / 1.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        size: h * .03,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text(
                        'ADD',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: h * .02,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * .04,
            ),
            Text(
              'Office Dept',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: h * .03 / 1.3,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Center(
              child: SizedBox(
                height: 300,
                width: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: PieChart(PieChartData(
                      startDegreeOffset: -20,
                      sectionsSpace: 2,
                      // centerSpaceRadius: 0,
                      pieTouchData: PieTouchData(enabled: false),
                      borderData: FlBorderData(show: false),
                      centerSpaceRadius: 20,
                      // borderData: FlBorderData(show: false),
                      sections: [
                        PieChartSectionData(
                            title: "10%",
                            titleStyle: const TextStyle(color: Colors.white),
                            value: 10,
                            color: Colors.purple,
                            radius: 90),
                        PieChartSectionData(
                            title: "79%",
                            titleStyle: const TextStyle(color: Colors.white),
                            value: 50,
                            color: Colors.blue,
                            radius: 90),
                        PieChartSectionData(
                            title: "11%",
                            titleStyle: const TextStyle(color: Colors.white),
                            value: 13,
                            color: Colors.green,
                            radius: 90)
                      ])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
