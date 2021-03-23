import 'package:chimpmusic/presentations/socialIcons.dart';
import 'package:chimpmusic/screens/home_screen.dart';
import 'package:chimpmusic/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        'LOGIN',
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
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
                            'LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 1,
                            width: 120,
                            color: Color.fromRGBO(254, 40, 81, 0.5),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 1,
                            width: 120,
                            color: Color.fromRGBO(254, 40, 81, 0.5),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            MyFlutterApp.facebook_f,
                            color: Color.fromRGBO(254, 40, 81, 1),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            MyFlutterApp.google,
                            color: Color.fromRGBO(254, 40, 81, 1),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            MyFlutterApp.twitter,
                            color: Color.fromRGBO(254, 40, 81, 1),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisteScreen()));
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'Dont have an account? ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  color: Color.fromRGBO(254, 40, 81, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      Color.fromRGBO(254, 40, 81, 1),
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
          )),
    );
  }
}
