import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class SignInPage extends StatefulWidget {
  // const SignInPage({ Key? key }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //Solves Keyboard Overflow Issue
      backgroundColor: HexColor("#F74463"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(100.0),
              // color: Colors.white,
              child: CircleAvatar(
                maxRadius: 40.0,
                backgroundColor: Colors.white,
                child: Text(
                  'R',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#F74463"),
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
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Form(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.005,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration:
                              BoxDecoration(color: Colors.grey.shade200),
                        ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.1,
                        // ),
                        Text(
                          'SIGN IN',
                          style: GoogleFonts.alata(
                            textStyle: TextStyle(
                              letterSpacing: 2,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#FA3F5C"),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.005,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration:
                              BoxDecoration(color: Colors.grey.shade200),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        // filled: true,
                        // fillColor: HexColor("#F4F4F6"),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          fontFamily: "Alata",
                          fontWeight: FontWeight.bold,
                        ),

                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          ),
                        ),

                        // floatingLabelBehavior: FloatingLabelBehavior.always, // floating label always stays on top
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        // filled: true,
                        // fillColor: HexColor("#F4F4F6"),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontFamily: "Alata",
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/otpScreen');
                      },
                      child: Text(
                        'Sign In',
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
                        elevation: 4.0,
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
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.alata(
                          textStyle: TextStyle(
                            // letterSpacing: 2,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        // elevation: 1.0,
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
