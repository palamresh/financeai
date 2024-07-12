import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HelpSection extends StatefulWidget {
  const HelpSection({super.key});

  @override
  State<HelpSection> createState() => _HelpSectionState();
}

class _HelpSectionState extends State<HelpSection> {
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
          'Help Section',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: h * .3 / 1.5,
                            width: w / 2.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent.shade100,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                AvatarGlow(
                                  glowColor: Colors.red,
                                  child: Material(
                                    // Replace this child with your own
                                    elevation: 8.0,
                                    shape: CircleBorder(),
                                    child: CircleAvatar(
                                      foregroundColor: Colors.blue,
                                      backgroundColor: Colors.blue[100],
                                      child: Icon(
                                        Icons.call,
                                        size: h * .03,
                                        color: Colors.black,
                                      ),
                                      radius: 24.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Chat with our executive',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: h * .02 / 1.3,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: h * .3 / 1.5,
                            width: w / 2.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightGreen.shade100,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                AvatarGlow(
                                  glowColor: Colors.blue,
                                  child: Material(
                                    // Replace this child with your own
                                    elevation: 8.0,
                                    shape: CircleBorder(),
                                    child: CircleAvatar(
                                      foregroundColor: Colors.blue,
                                      backgroundColor: Colors.black,
                                      child: Icon(
                                        Icons.call_split,
                                        size: h * .03,
                                        color: Colors.white,
                                      ),
                                      radius: 24.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Call us 24*7',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: h * .02 / 1.3,
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
                        height: h * .05,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
