import 'package:financeai/navigation_screen/analysis.dart';
import 'package:financeai/navigation_screen/categories.dart';
import 'package:financeai/navigation_screen/home_screen.dart';
import 'package:financeai/navigation_screen/prifile.dart';
import 'package:financeai/navigation_screen/transaction.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  @override
  NavigationScreenState createState() => NavigationScreenState();
}

class NavigationScreenState extends State<NavigationScreen> {
  var currentIndex = 0;

  final routes = [
    const HomeScreen(),
    const AnalysisPage(),
    TransactionPage(),
    const CategorieScreen(),
    const ProfilePage(),
  ];
  Color blendColors(Color color1, Color color2) {
    return Color.lerp(color1, color2, 0.5)!;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //  backgroundColor: Colors.green.withOpacity(.1),
      body: routes.elementAt(currentIndex),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 8),
        margin: EdgeInsets.zero,
        height: screenWidth * .185,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 5, 34, 36),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.black.withOpacity(.15),
            //   blurRadius: 30,
            //   offset: const Offset(0, 10),
            // ),
          ],
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          //   padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            // splashColor: Colors.transparent,
            // highlightColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: screenWidth * .1925,
                  child: Center(
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? screenWidth * .12 : 0,
                      width: index == currentIndex ? screenWidth * .2040 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Colors.green.withOpacity(.2)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    width: screenWidth * .1225,
                    alignment: Alignment.center,
                    child: Icon(
                      listOfIcons[index],
                      size: screenWidth * .076,
                      color:
                          index == currentIndex ? Colors.green : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.search_off_sharp,
    Icons.sync_alt,
    Icons.auto_awesome_motion,
    Icons.person_rounded,
  ];
}
