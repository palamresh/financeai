// ignore_for_file: unused_local_variable

import 'package:financeai/user_screen.dart/login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var secure = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confiremPasswordController = TextEditingController();
  final _dateController = TextEditingController();

  Future<void> selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    if (picked != null) {
      setState(() {
        _dateController.text = picked.toLocal().toString().split(' ')[0];
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 5, 34, 36),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: h * .06,
              ),
              Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: h * .03,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: h * .01),
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
                              height: h * .01,
                            ),
                            Text(
                              'Full Name',
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            // SizedBox(
                            //   height: h * .01,
                            // ),
                            TextFormField(
                              //  controller: emailController,
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
                              height: h * .01,
                            ),
                            Text(
                              'Email',
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            // SizedBox(
                            //   height: h * .01,
                            // ),
                            TextFormField(
                              //controller: emailController,
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
                              height: h * .01,
                            ),
                            Text(
                              'Mobile Number',
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            // SizedBox(
                            //   height: h * .01,
                            // ),
                            TextFormField(
                              // controller: emailController,
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                  filled: secure,
                                  fillColor: Colors.white,
                                  hintText: "+917452585654",
                                  hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            SizedBox(
                              height: h * .01,
                            ),
                            Text(
                              'Date of Birth',
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            // SizedBox(
                            //   height: h * .01,
                            // ),
                            TextFormField(
                              readOnly: true,
                              onTap: () {
                                selectDate(context);
                              },
                              controller: _dateController,
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        selectDate(context);
                                      },
                                      icon: Icon(Icons.calendar_today)),
                                  filled: secure,
                                  fillColor: Colors.white,
                                  hintText: "Date of Birth",
                                  hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            SizedBox(
                              height: h * .01,
                            ),
                            Text(
                              'Password',
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),

                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "pease enter your email";
                                }
                                return null;
                              },
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
                              height: h * .01,
                            ),
                            Text(
                              'Confirm Password',
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),

                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "pease enter cofirm password";
                                }
                                if (value != passwordController.text) {
                                  return "password can't mutch";
                                }
                                return null;
                              },
                              controller: confiremPasswordController,
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
                                  hintText: "confirm password",
                                  hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )),
                            ),
                            SizedBox(
                              height: h * .01,
                            ),

                            Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                "By Continue you agree to Terms of \nUse and Privacy Policy ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .02 /
                                            1.5),
                              ),
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
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.greenAccent),
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginScreen()));
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .02),
                                      ))),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .02 /
                                              1.3),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen()));
                                    },
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .02 /
                                              1.2),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
