// ignore_for_file: unused_local_variable

import 'package:financeai/profile_screen/Additional.dart';
import 'package:financeai/profile_screen/edit_profile.dart';
import 'package:financeai/profile_screen/help.dart';
import 'package:financeai/user_screen.dart/login.dart';
import 'package:flutter/material.dart';

import '../profile_screen/security.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final title = [
    "Edit Profile",
    "Security",
    "Help",
    "Logout",
    "Additional Feature",
  ];
  final icon = [
    Icons.person_outline_outlined,
    Icons.security_outlined,
    Icons.help,
    Icons.logout_outlined,
    Icons.featured_play_list,
  ];

  final routes = [
    EditProfile(),
    SecurityScreen(),
    HelpSection(),
    HelpSection(),
    AdditionalFeature(),
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
      ),
      body: Container(
        color: const Color.fromARGB(255, 5, 34, 36),
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
              height: h * .1 / 1.3,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: () {
                              if (index == 3) {
                                print("hi");
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => routes[index]));
                              }
                            },
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Icon(
                                icon[index],
                                color: Colors.white,
                                //size: h * .03,
                              ),
                            ),
                            title: Text(
                              title[index],
                              style: TextStyle(
                                  fontSize: h * .02,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
