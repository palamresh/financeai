import 'package:financeai/navigation/navigation.dart';
import 'package:financeai/profile_screen/add_fingerprint.dart';
import 'package:financeai/user_screen.dart/forget_password.dart';
import 'package:flutter/material.dart';

import 'sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              'Welcome',
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
                          Text(
                            'Password',
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
                            controller: passwordController,
                            obscureText: secure,
                            style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.shield_moon,
                                    color: secure
                                        ? Colors.black87
                                        : Colors.redAccent,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      secure = !secure;
                                    });
                                  },
                                ),
                                filled: secure,
                                fillColor: Colors.white,
                                hintText: "Enter your password",
                                hintStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
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
                                      "Login",
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
                            height: h * .01,
                          ),
                          Center(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()));
                                },
                                child: Text(
                                  "Forget Password",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .02),
                                )),
                          ),
                          SizedBox(
                            height: h * .01,
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
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddFingerPrint()));
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Use",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: h * .02)),
                                TextSpan(
                                    text: " Fingerprint",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: h * .02)),
                                TextSpan(
                                    text: " To Access",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: h * .02)),
                              ])),
                            ),
                          ),
                          SizedBox(
                            height: h * .02,
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
