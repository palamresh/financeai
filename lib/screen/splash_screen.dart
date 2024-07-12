import 'package:financeai/services/splash_service.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService service = SplashService();
  @override
  void initState() {
    service.isLogin(context);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 208, 158),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.currency_exchange_outlined,
              color: Colors.black,
              size: MediaQuery.of(context).size.height * .2 / 1.1,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Finance",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: MediaQuery.of(context).size.height * .07,
                  )),
              TextSpan(
                  text: "AI",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontSize: MediaQuery.of(context).size.height * .07,
                  ))
            ]))
          ],
        ),
      ),
    );
  }
}
