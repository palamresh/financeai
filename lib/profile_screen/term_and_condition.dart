import 'package:flutter/material.dart';

class TermAndCondition extends StatefulWidget {
  const TermAndCondition({super.key});

  @override
  State<TermAndCondition> createState() => _TermAndConditionState();
}

class _TermAndConditionState extends State<TermAndCondition> {
  bool checkboxValue = false;
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
          'Term And Condition',
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
        child: Column(
          children: [
            SizedBox(
              height: h * .05,
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(.1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: h * .02,
                        ),
                        Text(
                          'Terms and Conditions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * .03 / 1.3,
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 30, right: 30),
                          child: Text(
                            "Have you ever wondered how to shield your online business from legal disputes and enhance user trust? Terms and conditions are more than just legal jargon; they are essential tools that guide users in interacting with your service or product. Whether you’re an entrepreneur, the owner of an online store, or running a membership website, establishing clear rules is not just a best practice—it’s a necessity. This article is tailored to help you understand the importance of terms and conditions, identify key elements to include, and offer practical tips on seamlessly integrating them into your website. By the end, you’ll not only grasp the ‘why’ but also the ‘how’ of crafting terms and conditions that protect both you and your users, covering everything from safeguarding against information loss to preventing copyright infringement. Let’s embark on this journey to ensure your online presence is both secure and user-friendly.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 18),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: checkboxValue,
                                  onChanged: (value) {
                                    setState(() {
                                      checkboxValue = value!;
                                    });
                                  }),
                              Text(
                                'I Accept all term and condition',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02,
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * .05,
                          width: w / 2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Accept',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: h * .03 / 1.3,
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
