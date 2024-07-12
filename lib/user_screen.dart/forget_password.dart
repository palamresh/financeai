import 'package:financeai/navigation/navigation.dart';
import 'package:financeai/profile_screen/add_fingerprint.dart';
import 'package:flutter/material.dart';

import 'sign_up.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var secure = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
              'Forgot  Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: h * .03,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: h * .1 / 1.7,
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
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: h * .02,
                          ),
                          Text(
                            'Username or Email',
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * .02,
                          ),
                          TextFormField(
                            controller: emailController,
                            style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                                filled: secure,
                                fillColor: Colors.white,
                                hintText: "enter your email",
                                hintStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          SizedBox(
                            height: h * .02,
                          ),
                          SizedBox(
                            height: h * .03,
                          ),
                          Center(
                            child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .06,
                                width: MediaQuery.of(context).size.width / 2,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.greenAccent),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  NavigationScreen()));
                                    },
                                    child: Text(
                                      "Forgot Password",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .02),
                                    ))),
                          ),
                          SizedBox(
                            height: h * .03,
                          ),
                          Center(
                            child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .06,
                                width: MediaQuery.of(context).size.width / 2,
                                child: ElevatedButton(
                                    // style: ElevatedButton.styleFrom(
                                    //     backgroundColor: Colors.greenAccent),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpScreen()));
                                    },
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .02),
                                    ))),
                          ),
                          SizedBox(
                            height: h * .01,
                          ),
                          SizedBox(
                            height: h * .3 / 1.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: h * .08,
                                width: w * .4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white12),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: h * .06,
                                      width: w * .2 / 1.3,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                            'https://tse4.mm.bing.net/th?id=OIP.GN1-R3cCXf-sQcQF6Zkt8AHaHa&pid=Api&P=0&h=220'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: h * .08,
                                width: w * .4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white12),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: h * .06,
                                      width: w * .2 / 1.3,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: ClipRRect(
                                        child: Image.network(
                                            'https://tse2.mm.bing.net/th?id=OIP.MHNWAEjX95uG3maQoGtZzAHaHa&pid=Api&P=0&h=220'),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
