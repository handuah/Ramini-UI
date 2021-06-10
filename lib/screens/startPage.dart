import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class StartPage extends StatefulWidget {
  // const StartPage({ Key? key }) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F74463"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(100.0),
              child: CircleAvatar(
                maxRadius: 50.0,
                child: Text(
                  'R',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#FFFFFF"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text(
            'RAMINI',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: 2,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: HexColor("#FFFFFF"),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.34,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Get Started',
              style: GoogleFonts.poppins(
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
              Navigator.pushNamed(context, '/signinScreen');
            },
            child: Text(
              'Sign In',
              style: GoogleFonts.poppins(
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
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
