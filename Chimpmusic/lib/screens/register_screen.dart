import 'dart:ui';

import 'package:chimpmusic/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RegisteScreen extends StatefulWidget {
  @override
  _RegisteScreenState createState() => _RegisteScreenState();
}

class _RegisteScreenState extends State<RegisteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(14, 11, 30, 1),
        body: Stack(
          children: [
            Positioned(
              top: -10,
              left: -300,
              child: Image.asset(
                'assets/headphone.png',
                fit: BoxFit.cover,
                height: 630,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              //color: Colors.lightBlue,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Image.asset('assets/logo.png'),
                    SizedBox(height: 14),
                    Text(
                      'CHIMP MUSIC',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.smartphone,
                            color: Color.fromRGBO(254, 40, 81, 1),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: TextField(
                              cursorColor: Color.fromRGBO(254, 40, 81, 1),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your Mobile No.',
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Color.fromRGBO(254, 40, 81, 1),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: TextField(
                              cursorColor: Color.fromRGBO(254, 40, 81, 1),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.visibility,
                            color: Color.fromRGBO(254, 40, 81, 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Color.fromRGBO(254, 40, 81, 1),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: TextField(
                              cursorColor: Color.fromRGBO(254, 40, 81, 1),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.visibility,
                            color: Color.fromRGBO(254, 40, 81, 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
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
                        'REGISTER',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_outline_blank,
                          color: Color.fromRGBO(254, 40, 81, 1),
                        ),
                        SizedBox(width: 3),
                        Text(
                          'Agree To The Therms Of Service & Privacy',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an Account? ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Color.fromRGBO(254, 40, 81, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor: Color.fromRGBO(254, 40, 81, 1),
                                decorationThickness: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
