import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 5, 34, 36),
        // color: Color(#052224),
        child: Column(
          children: [
            SizedBox(
              height: h * .1,
            ),
            Text(
              'Welcome to\nFinanceAI',
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
                child: Center(
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
                          'https://tse1.mm.bing.net/th?id=OIP.aXhjZ1PPyGzYegApg3K1UgHaHa&pid=Api&P=0&h=220',
                        ),
                      ),
                    ),
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
