// ignore_for_file: unused_local_variable


import 'package:flutter/material.dart';

class ChangePin extends StatefulWidget {
  const ChangePin({super.key});

  @override
  State<ChangePin> createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  var secure = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confiremPasswordController = TextEditingController();
  final _dateController = TextEditingController();

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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Change Pin',
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: h * .1 / 1.5,
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
                              'Current Pin',
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
                              height: h * .02,
                            ),
                            Text(
                              'New Pin',
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
                              height: h * .02,
                            ),
                            Text(
                              'Confirem Pin',
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
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Update Profile",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .02),
                                      ))),
                            ),
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
