import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 5, 34, 36),
        child: Column(
          children: [
            SizedBox(
              height: h * .1,
            ),
            Text(
              'Are you ready to take control your finance',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: h * .03,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: h * .1,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: h * .2,
                      left: w * .3 / 1.3,
                      child: Container(
                        height: h * .3 / 1.2,
                        width: w / 1.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              fit: BoxFit.cover,
                              'https://tse1.mm.bing.net/th?id=OIP.DEP4xoEhNHivuBK5vS1O5QHaF7&pid=Api&P=0&h=220',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
