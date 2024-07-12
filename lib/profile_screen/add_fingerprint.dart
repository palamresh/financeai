import 'package:flutter/material.dart';

class AddFingerPrint extends StatefulWidget {
  const AddFingerPrint({super.key});

  @override
  State<AddFingerPrint> createState() => _AddFingerPrintState();
}

class _AddFingerPrintState extends State<AddFingerPrint> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Add FingerPrint',
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
            SizedBox(
              height: h * .05,
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * .05,
                      ),
                      Container(
                        height: h * .3 / 1.2,
                        width: w / 1.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.fingerprint,
                            size: h * .2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .05,
                      ),
                      Text(
                        'Use Finger to access',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: h * .03 / 1.3,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: h * .05,
                      ),
                      SizedBox(
                        height: h * .05,
                        width: w / 1.5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Use Touch ID',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .03 / 1.3,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
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
