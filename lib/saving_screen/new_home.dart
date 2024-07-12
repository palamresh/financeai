import 'package:flutter/material.dart';

class NewHouseSavingScreen extends StatefulWidget {
  const NewHouseSavingScreen({super.key});

  @override
  State<NewHouseSavingScreen> createState() => _NewHouseSavingScreenState();
}

class _NewHouseSavingScreenState extends State<NewHouseSavingScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'New House',
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
              height: h * .06,
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: h * .1 / 1.1,
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: h * .2 / 1.2,
                          width: w / 1.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            // color: Colors.greenAccent
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.money,
                                          size: h * .02,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                          width: 10,
                                        ),
                                        Text(
                                          'Goal',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: h * .02,
                                              decoration: TextDecoration.none,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "\$4092.00",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: h * .02,
                                            decoration: TextDecoration.none,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.arrow_circle_up,
                                            size: h * .02, color: Colors.white),
                                        const SizedBox(
                                          width: 10,
                                          height: 10,
                                        ),
                                        Text(
                                          'Amount Saved',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: h * .02,
                                              decoration: TextDecoration.none,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "\$1,292.00",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: h * .02,
                                            decoration: TextDecoration.none,
                                            color: Colors.green,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: h * .2 / 1.2,
                                    width: w * .4,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue.shade200),
                                    child: Center(
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 3,
                                            left: 8,
                                            child: Icon(
                                              Icons.house_outlined,
                                              size: h * .1 / 1.5,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: w * .2 / 1.1,
                                            height: h * .08,
                                            child:
                                                const CircularProgressIndicator(
                                              color: Colors.blue,
                                              value: 0.4,
                                              backgroundColor: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    // Text(
                                    //   "Saving\n on goal",
                                    //   textAlign: TextAlign.center,
                                    //   style: TextStyle(
                                    //       fontSize: h * .02,
                                    //       decoration: TextDecoration.none,
                                    //       color: Colors.black,
                                    //       fontWeight: FontWeight.w600),
                                    // ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green.withOpacity(.1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "30%",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 32,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(.9)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      "\$1,292.00",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: h * .02,
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "April",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: () async {
                                  await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime.now());
                                },
                                icon: Icon(
                                  Icons.calendar_today,
                                  size: h * .03,
                                  color: Colors.deepOrange,
                                ))
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: Text(
                          "-\$500.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          "House Deposite",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "18:26 April 30",
                          style: TextStyle(
                              fontSize: h * .02 / 1.4,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.house_outlined,
                            color: Colors.white,
                            //size: h * .03,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: Text(
                          "-\$92.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          "House Deposite",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "18:26 April 30",
                          style: TextStyle(
                              fontSize: h * .02 / 1.4,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.house_outlined,
                            color: Colors.white,
                            //size: h * .03,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: Text(
                          "-\$392.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          "House Deposite",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "18:26 April 30",
                          style: TextStyle(
                              fontSize: h * .02 / 1.4,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.house_outlined,
                            color: Colors.white,
                            //size: h * .03,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "March",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: Text(
                          "-\$92.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          "House Deposite",
                          style: TextStyle(
                              fontSize: h * .02,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "9:26 March 20",
                          style: TextStyle(
                              fontSize: h * .02 / 1.4,
                              decoration: TextDecoration.none,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.house_outlined,
                            color: Colors.white,
                            //size: h * .03,
                          ),
                        ),
                      ),

                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Add Savings",
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
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
