import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomePage extends StatefulWidget {
  // const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F74463"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hello, Hannah',
            style: GoogleFonts.alata(
              textStyle: TextStyle(
                // letterSpacing: 2,
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
                color: HexColor("#FFFFFF"),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Text(
            'Welcome to Ramini',
            style: GoogleFonts.alata(
              textStyle: TextStyle(
                // letterSpacing: 2,
                fontSize: 18.0,
                fontWeight: FontWeight.w100,
                color: HexColor("#FFFFFF"),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(100.0),
              child: CircleAvatar(
                // foregroundColor: Colors.white,
                backgroundColor: Colors.white,
                maxRadius: 50.0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  maxRadius: 46.0,
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Change Profile Picture',
              style: GoogleFonts.alata(
                textStyle: TextStyle(
                  // letterSpacing: 2,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w100,
                  color: HexColor("#F74463"),
                ),
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: HexColor("#FFFFFF"),
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.08,
                vertical: MediaQuery.of(context).size.height * 0.006,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Upload Picture',
              style: GoogleFonts.alata(
                textStyle: TextStyle(
                  // letterSpacing: 2,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#F74463"),
                ),
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: HexColor("#FFFFFF"),
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.24,
                vertical: MediaQuery.of(context).size.height * 0.016,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homeScreen');
            },
            child: Text(
              'Skip',
              style: GoogleFonts.alata(
                textStyle: TextStyle(
                  // letterSpacing: 2,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#FFFFFF"),
                ),
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: HexColor("#F74463"),
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.24,
                vertical: MediaQuery.of(context).size.height * 0.016,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
        ],
      ),
    );
  }
}
