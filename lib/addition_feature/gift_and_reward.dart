import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';


class GiftAndReward extends StatefulWidget {
  const GiftAndReward({super.key});

  @override
  State<GiftAndReward> createState() => _GiftAndRewardState();
}

class _GiftAndRewardState extends State<GiftAndReward> {
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
          'Gife And Rewards',
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
            Container(
              height: h * .3,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Image.network(
                'https://tse2.mm.bing.net/th?id=OIP.4U_1VICEZgTjleaS_Cu7MAHaEM&pid=Api&P=0&h=220',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            Text(
              'Refer and Earn',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: h * .03,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: h * .05,
            ),
            Text(
              'On Every successful signup, You have receive\$100 on each referral',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: h * .02,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: h * .05,
            ),
            OutlinedButton.icon(
              onPressed: () async {
                await Share.share('https://technozions.com');
              },
              label: Text(
                'Share Link',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: h * .02,
                    decoration: TextDecoration.none,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600),
              ),
              icon: Icon(
                Icons.share,
                size: h * .03,
              ),
            )
          ],
        ),
      ),
    );
  }
}
