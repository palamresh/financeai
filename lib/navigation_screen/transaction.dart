import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  var color = Colors.white;
  var toggle = true;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
        centerTitle: true,
        title: Text(
          'Transaction',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .03 / 1.3,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 5, 34, 36),
        child: Column(
          children: [
            Container(
              height: h * .1,
              width: w * 1 / 1.2,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
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
                  Text(
                    '\$7,000.00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: h * .03,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        toggle = !toggle;
                        color = toggle ? Colors.white : Colors.blue;
                      });
                    },
                    child: Container(
                      height: h * .2 / 1.5,
                      width: w / 2.5,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.attach_money_outlined,
                            size: h * .03,
                            color: Colors.green,
                          ),
                          Text(
                            'Income',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '\$7,000.00',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .03,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h * .2 / 1.5,
                    width: w / 2.5,
                    decoration: BoxDecoration(
                        color: color = toggle ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.money_off,
                          size: h * .03,
                          color: Colors.green,
                        ),
                        Text(
                          'Expense',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '\$3,000.00',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .03,
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
              height: h * .1,
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(.1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  child: toggle
                      ? Column(
                          children: [
                            SizedBox(
                              height: h * .01,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      "Transport",
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
                        )
                      : Column(
                          children: [
                            SizedBox(
                              height: h * .01,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.calendar_today,
                                        size: h * .03,
                                        color: Colors.deepOrange,
                                      ))
                                ],
                              ),
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
                        )),
            ),
          ],
        ),
      ),
    );
  }
}
