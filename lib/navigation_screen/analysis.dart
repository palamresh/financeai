// ignore_for_file: unused_local_variable

import 'package:financeai/analysis_screen/earlyChart.dart';
import 'package:financeai/analysis_screen/weeklyChart.dart';
import 'package:flutter/material.dart';

import '../analysis_screen/monthlyChart.dart';

import '../analysis_screen/dailyChart.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  int selectedButtonIndex = 0;

  final List<Color> buttonColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
  ];

  final List<Widget> containers = [
    DailyChart(),
    WeeklyChart(),
    MonthlyChart(),
    EarlyChart()
  ];

  final buttonName = [
    "Daily",
    "Weekly",
    "Monthly",
    "Year",
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Analysis',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
      ),
      body: Container(
        color: const Color.fromARGB(255, 5, 34, 36),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_right_sharp,
                          size: h * .03,
                          color: Colors.white,
                        ),
                        Text(
                          'Total Balance',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02 / 1.2,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Text(
                      "\$7,020.00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: h * .03,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Transform.rotate(
                  angle: 90 * 22 / 7 / 180,
                  child: const SizedBox(
                    height: 70,
                    width: 50,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_right_sharp,
                          size: h * .03,
                          color: Colors.white,
                        ),
                        Text(
                          'Total Expanse',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02 / 1.2,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Text(
                      "-\$1,292.00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: h * .03,
                          decoration: TextDecoration.none,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green.withOpacity(.1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "30%",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: h * .02,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 32,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(.9)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "\$1,292.00",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .06,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.1),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * .08,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green.shade100),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(4, (index) {
                                  return TextButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedButtonIndex = index;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      backgroundColor:
                                          selectedButtonIndex == index
                                              ? buttonColors[index]
                                              : Colors.white,
                                    ),
                                    child: Text(
                                      buttonName[index],
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: containers[selectedButtonIndex],
                            ),
                          ]),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
