// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({super.key});

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Gifts',
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: h * .1 / 1.1,
                      // ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "April",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: () async {
                                  await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime.now());
                                },
                                icon: Icon(
                                  Icons.calendar_today,
                                  size: h * .03,
                                  color: Colors.deepOrange,
                                ))
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: Text(
                          "-\$500.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          "Perfume",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "7:00 April 29",
                          style: TextStyle(
                              fontSize: h * .02 / 1.4,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.card_giftcard_outlined,
                            color: Colors.white,
                            //size: h * .03,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: Text(
                          "-\$92.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          "Make -up",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "18:26 April 27",
                          style: TextStyle(
                              fontSize: h * .02 / 1.4,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.card_giftcard_outlined,
                            color: Colors.white,
                            //size: h * .03,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: Text(
                          "-\$392.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          "Teddy Bear",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "18:26 April 30",
                          style: TextStyle(
                              fontSize: h * .02 / 1.4,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.card_giftcard_outlined,
                            color: Colors.white,
                            //size: h * .03,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "March",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: Text(
                          "-\$92.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          "Toys",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "9:26 March 20",
                          style: TextStyle(
                              fontSize: h * .02 / 1.4,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.card_giftcard_outlined,
                            color: Colors.white,
                            //size: h * .03,
                          ),
                        ),
                      ),

                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Add Expenses",
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
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
