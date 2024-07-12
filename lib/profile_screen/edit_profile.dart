import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
    // ignore: unused_local_variable
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Edit Profile',
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
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: h * .05,
                ),
              ),
              SizedBox(
                height: h * .04,
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
                                  hintText: "Harsh",
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
                                  hintText: "harsh@gmail.com",
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
