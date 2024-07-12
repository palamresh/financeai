import 'package:financeai/categorie_screen/groceries.dart';
import 'package:financeai/categorie_screen/medicine.dart';
import 'package:financeai/categorie_screen/transport.dart';
import 'package:flutter/material.dart';

import '../categorie_screen/entertainment.dart';
import '../categorie_screen/food.dart';
import '../categorie_screen/gift.dart';
import '../categorie_screen/rent.dart';
import '../categorie_screen/saving.dart';

class CategorieScreen extends StatefulWidget {
  const CategorieScreen({super.key});

  @override
  State<CategorieScreen> createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
  final title = [
    "Food",
    "Transport",
    "Medicine",
    "Groceries",
    "Rent",
    "Gift",
    "Savings",
    "Entertainment",
    "Add",
  ];
  final icon = [
    Icons.local_drink,
    Icons.bus_alert,
    Icons.medication_liquid_rounded,
    Icons.store,
    Icons.vpn_key,
    Icons.card_giftcard_outlined,
    Icons.savings,
    Icons.movie,
    Icons.add
  ];

  final routes = [
    FoodScreen(),
    TransportScreen(),
    MedicineScreen(),
    GroceriesScreen(),
    RentScreen(),
    GiftScreen(),
    SavingScreen(),
    EntertainmentScreen(),
    FoodScreen(),
  ];

  void showDialogBox1(var h, var w) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: const Color.fromARGB(255, 5, 34, 36),
              content: Container(
                color: const Color.fromARGB(255, 5, 34, 36),
                height: h * .3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'New Categorie',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: h * .03,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: h * .01,
                    ),
                    TextFormField(
                      style: const TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Write..",
                          hintStyle: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: h * .01,
                    ),
                    Center(
                      child: SizedBox(
                        width: w * .6,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {},
                          child: Text(
                            "Save",
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * .01,
                    ),
                    Center(
                      child: SizedBox(
                        width: w * .6,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Categories',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_right_sharp,
                          size: h * .03,
                          color: Colors.white,
                        ),
                        Text(
                          'Total Balance',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02 / 1.2,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Text(
                      "\$7,020.00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: h * .03,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Transform.rotate(
                  angle: 90 * 22 / 7 / 180,
                  child: const SizedBox(
                    height: 70,
                    width: 50,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_right_sharp,
                          size: h * .03,
                          color: Colors.white,
                        ),
                        Text(
                          'Total Expanse',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .02 / 1.2,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Text(
                      "-\$1,292.00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: h * .03,
                          decoration: TextDecoration.none,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
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
                    padding: const EdgeInsets.all(30.0),
                    child: GridView.builder(
                        itemCount: 9,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 9,
                                childAspectRatio: 1 / 1.2,
                                mainAxisSpacing: 20,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              if (index == 8) {
                                showDialogBox1(h, w);
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => routes[index]));
                              }
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: h * .1,
                                  width: w / 4,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Icon(
                                      icon[index],
                                      size: h * .05,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: h * .01,
                                ),
                                Text(
                                  title[index],
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: h * .02,
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );
                        })),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
