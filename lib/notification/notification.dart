// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final title = [
    "ChangePin",
    "FingerPrint",
    "Term And Condition",
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Notification',
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
            SizedBox(
              height: h * .1 / 1.5,
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
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Today',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: h * .02,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: h * .03,
                          ),
                        ),
                        subtitle: Text(
                          'Setup your automatic saving to meet your saving goal.',
                          style: TextStyle(
                              fontSize: h * .02 / 1.3,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          'Reminder',
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          '5:00 - April 4',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: h * .02 / 1.3,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Yesterday',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: h * .02,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: h * .03,
                          ),
                        ),
                        subtitle: Text(
                          'New version is release and improve the bug.',
                          style: TextStyle(
                              fontSize: h * .02 / 1.3,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          'New update',
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          '5:00 - April 3',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: h * .02 / 1.3,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Divider(
                        thickness: 2,
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
