import 'package:financeai/notification/notification.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hii, Harsh',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade700),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationScreen()));
                  },
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ),
          )
        ],
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
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Container(
                        height: h * .2 / 1.2,
                        width: w / 1.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.greenAccent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: [
                                    Positioned(
                                      top: 10,
                                      left: 15,
                                      child: Icon(
                                        Icons.car_repair,
                                        size: h * .05,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * .2 / 1.2,
                                      height: h * .07,
                                      child: const CircularProgressIndicator(
                                        color: Colors.blue,
                                        value: 0.5,
                                        backgroundColor: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "Saving\n on goal",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: h * .02,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Transform.rotate(
                              angle: 90 * 22 / 7 / 180,
                              child: const SizedBox(
                                height: 50,
                                width: 70,
                                child: Divider(
                                  thickness: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.money,
                                        size: h * .02,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                        width: 10,
                                      ),
                                      Text(
                                        'Revenue Last Week',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: h * .02 / 1.5,
                                            decoration: TextDecoration.none,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$4092.00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: h * .02,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                    width: 100,
                                    child: Divider(
                                      thickness: 3,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_circle_up,
                                        size: h * .02,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                      Text(
                                        'Food Last Week',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: h * .02 / 1.3,
                                            decoration: TextDecoration.none,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$1,292.00",
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
                      ),
                      SizedBox(
                        height: h * .1 / 1.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: h * .06,
                            width: w * .2 / 1.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue),
                            child: Center(
                              child: Icon(
                                Icons.monetization_on,
                                size: h * .05,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Salary",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02,
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "18:26 April 30",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02 / 1.7,
                                    decoration: TextDecoration.none,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Container(
                            height: h * .05,
                            width: 3,
                            color: Colors.green,
                          ),
                          Text(
                            "Monthly",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            height: h * .05,
                            width: 3,
                            color: Colors.green,
                          ),
                          Text(
                            "\$1,292.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.blue,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: h * .06,
                            width: w * .2 / 1.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue),
                            child: Center(
                              child: Icon(
                                Icons.card_giftcard,
                                size: h * .05,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Groceries",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02,
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "18:26 April 30",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02 / 1.7,
                                    decoration: TextDecoration.none,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Container(
                            height: h * .05,
                            width: 3,
                            color: Colors.green,
                          ),
                          Text(
                            "Monthly",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            height: h * .05,
                            width: 3,
                            color: Colors.green,
                          ),
                          Text(
                            "-\$2000.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.blue,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: h * .06,
                            width: w * .2 / 1.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue),
                            child: Center(
                              child: Icon(
                                Icons.add_home_rounded,
                                size: h * .04,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rent",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02,
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "18:26 April 30",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02 / 1.7,
                                    decoration: TextDecoration.none,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Container(
                            height: h * .05,
                            width: 3,
                            color: Colors.green,
                          ),
                          Text(
                            "Monthly",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            height: h * .05,
                            width: 3,
                            color: Colors.green,
                          ),
                          Text(
                            "\$3092.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.blue,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
