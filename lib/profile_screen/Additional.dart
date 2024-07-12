import 'package:financeai/addition_feature/cummunity_section.dart';
import 'package:financeai/addition_feature/currency_convert.dart';
import 'package:financeai/addition_feature/debt_management.dart';
import 'package:financeai/addition_feature/gift_and_reward.dart';

import 'package:flutter/material.dart';

import '../addition_feature/emergency_fund.dart';
import '../addition_feature/finance_education.dart';

class AdditionalFeature extends StatefulWidget {
  const AdditionalFeature({super.key});

  @override
  State<AdditionalFeature> createState() => _AdditionalFeatureState();
}

class _AdditionalFeatureState extends State<AdditionalFeature> {
  final title = [
    "Gift And Reward Section",
    "Use Community Section",
    "Finance Eduction Section",
    "Emergency Fund Section",
    "Currency Convert",
    "Debt Management",
  ];

  final routes = [
    GiftAndReward(),
    UserCommunity(),
    FinanceEducation(),
    EmergencyFund(),
    CurrencyConvert(),
    DebtManagement(),
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Additional Feature',
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
              height: h * .1,
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
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.builder(
                      padding: EdgeInsets.all(10),
                      itemExtent: 80,
                      itemCount: title.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black12,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => routes[index]));
                            },
                            child: Text(
                              title[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: h * .02,
                                  decoration: TextDecoration.none,
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
