import 'package:financeai/screen/welcome_page.dart';
import 'package:financeai/screen/welcome_screen.dart';
import 'package:financeai/user_screen.dart/account.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {});
              currentPage = value;
            },
            children: [Welcome(), WelcomePage()],
          ),
          Positioned(
            bottom: 140,
            left: MediaQuery.of(context).size.width / 2.2,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                spacing: 16,
                dotColor: Colors.white,
                activeDotColor: Colors.blueAccent,
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: MediaQuery.of(context).size.width / 2.7,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: currentPage == 1
                    ? () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Account()));
                      }
                    : () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                child: Text(
                  currentPage == 1 ? 'Finish' : 'Next',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .02,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
