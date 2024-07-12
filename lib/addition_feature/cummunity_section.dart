import 'package:flutter/material.dart';

class UserCommunity extends StatefulWidget {
  const UserCommunity({super.key});

  @override
  State<UserCommunity> createState() => _UserCommunityState();
}

class _UserCommunityState extends State<UserCommunity> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 34, 36),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'User Community',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: h * .03,
            ),
            TextFormField(
              //  controller: emailController,
              style: const TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: h * .03,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Ask here",
                  hintStyle: const TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: h * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * .2 / 1.5,
                  width: w / 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        size: h * .03,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text(
                        'Tips to reduce expense',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: h * .02,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h * .2 / 1.5,
                  width: w / 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        size: h * .03,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text(
                        'Tips to Manage Money',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: h * .02,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
