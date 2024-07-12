import 'package:flutter/material.dart';

class EmergencyFund extends StatefulWidget {
  const EmergencyFund({super.key});

  @override
  State<EmergencyFund> createState() => _EmergencyFundState();
}

class _EmergencyFundState extends State<EmergencyFund> {
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
          'Emergency Fund',
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
                    'Total Balance',
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
                    '\$3000.59',
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
                  width: w / 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        size: h * .03,
                        color: Colors.blue,
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
                Container(
                  height: h * .2 / 1.5,
                  width: w / 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        size: h * .03,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text(
                        'Withdraw',
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
            )
          ],
        ),
      ),
    );
  }
}
