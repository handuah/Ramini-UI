import 'package:flutter/material.dart';
import 'package:ramini_app/screens/homeScreen.dart';
import 'package:ramini_app/screens/otpPage.dart';
import 'package:ramini_app/screens/signInPage.dart';
import 'package:ramini_app/screens/startPage.dart';
import 'package:ramini_app/screens/welcomePage.dart';

void main() {
  runApp(RaminiApp());
}

class RaminiApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ramini App',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: StartPage(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/startScreen',
        routes: {
          '/startScreen': (context) => StartPage(),
          '/signinScreen': (context) => SignInPage(),
          '/otpScreen': (context) => OTPPage(),
          '/welcomeScreen': (context) => WelcomePage(),
          '/homeScreen': (context) => HomeScreen(),
        });
  }
}
