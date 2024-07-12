// ignore_for_file: unused_local_variable

import 'package:financeai/profile_screen/add_fingerprint.dart';

import 'package:flutter/material.dart';

import 'harsh_fingerprint.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  final title = [
    "Harsh Fingerprint",
    "Add A fingerprint",
  ];
  final icon = [
    Icons.fingerprint,
    Icons.add,
  ];

  final routes = [
    HarshFingerprint(),
    AddFingerPrint(),
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
          'FingerPrint',
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
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            trailing: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: h * .03,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => routes[index]));
                            },
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Icon(
                                icon[index],
                                color: Colors.white,
                                //size: h * .03,
                              ),
                            ),
                            title: Text(
                              title[index],
                              style: TextStyle(
                                  fontSize: h * .02,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
