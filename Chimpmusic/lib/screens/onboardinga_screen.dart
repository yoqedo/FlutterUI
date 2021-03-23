import 'package:chimpmusic/screens/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(14, 11, 30, 1),
        body: Container(
            child: PageView(
          controller: _pageController,
          onPageChanged: (int page) {},
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 30,
                    child: Container(
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Listen ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'to ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Unlimited ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.pink,
                                    decorationThickness: 3,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Music',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(
                            'Listen to 40000+ song and 1600+ \n artists',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    child: Image.asset(
                      'assets/iphone.png',
                      height: 550,
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 0,
                    child: Container(
                      height: 140,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(14, 11, 30, 1),
                        border: Border(
                            top: BorderSide(width: 5, color: Colors.pink)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: Text(
                              'Skip For Now',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(254, 40, 81, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                'CONTINUE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 30,
                    child: Container(
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Unlimited ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Download',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.pink,
                                    decorationThickness: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(
                            'Download Unlimited song anytime \nfor free',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    child: Image.asset(
                      'assets/iphone2.png',
                      height: 550,
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 0,
                    child: Container(
                      height: 140,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(14, 11, 30, 1),
                        border: Border(
                            top: BorderSide(width: 5, color: Colors.pink)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: Text(
                              'Skip For Now',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(254, 40, 81, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                'CONTINUE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 30,
                    child: Container(
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Search ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'With ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.pink,
                                    decorationThickness: 3,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Voice',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(
                            'Service will identify any music playing \n around you',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    child: Image.asset(
                      'assets/iphone.png',
                      height: 550,
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 0,
                    child: Container(
                      height: 140,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(14, 11, 30, 1),
                        border: Border(
                            top: BorderSide(width: 5, color: Colors.pink)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            '',
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(254, 40, 81, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                'GET STARTED',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
