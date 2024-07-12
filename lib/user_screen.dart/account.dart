import 'package:financeai/user_screen.dart/login.dart';
import 'package:financeai/user_screen.dart/sign_up.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 79, 28),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.currency_exchange_outlined,
              color: Colors.black,
              size: MediaQuery.of(context).size.height * .2 / 1.5,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Finance",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: MediaQuery.of(context).size.height * .05,
                  )),
              TextSpan(
                  text: "AI",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontSize: MediaQuery.of(context).size.height * .05,
                  ))
            ])),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .06,
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height * .02),
                    ))),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .06,
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.greenAccent),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .02),
                    )))
          ],
        ),
      ),
    );
  }
}
