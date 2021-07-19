import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class OTPPage extends StatefulWidget {
  // const OTPPage({ Key? key }) : super(key: key);

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true, //Solves Keyboard Overflow Issue
      backgroundColor: HexColor("#F74463"),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: screenHeight * 0.04,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: screenHeight * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
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
              height: MediaQuery.of(context).size.height * 0.20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
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
                            width: MediaQuery.of(context).size.width * 0.14,
                            decoration:
                                BoxDecoration(color: Colors.grey.shade200),
                          ),
                          // SizedBox(
                          //   width: MediaQuery.of(context).size.width * 0.1,
                          // ),
                          Text(
                            'OTP VERIFICATION',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                letterSpacing: 2,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: HexColor("#FA3F5C"),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.005,
                            width: MediaQuery.of(context).size.width * 0.14,
                            decoration:
                                BoxDecoration(color: Colors.grey.shade200),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      Text(
                        'OTP HAS BEEN SENT TO 02XXXXXXXX',
                        style: GoogleFonts.alata(
                          textStyle: TextStyle(
                            // letterSpacing: 2,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: TextFormField(
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              textAlign: TextAlign.center,
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                // filled: true,
                                // fillColor: HexColor("#F4F4F6"),
                                // labelText: '0',
                                // labelStyle: TextStyle(
                                //   fontFamily: "Alata",
                                //   fontWeight: FontWeight.bold,
                                //   fontSize: 30.0,
                                // ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                                counterText: "",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: TextFormField(
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              textAlign: TextAlign.center,
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                // filled: true,
                                // fillColor: HexColor("#F4F4F6"),
                                // labelText: '0',
                                // labelStyle: TextStyle(
                                //   fontFamily: "Alata",
                                //   fontWeight: FontWeight.bold,
                                //   fontSize: 30.0,
                                // ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                                counterText: "",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: TextFormField(
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              textAlign: TextAlign.center,
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                                counterText: "",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: TextFormField(
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              textAlign: TextAlign.center,
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                                counterText:
                                    "", //removes counterText from MaxLength enforcement
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcomeScreen');
                        },
                        child: Text(
                          'VERIFY OTP',
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
                            horizontal:
                                MediaQuery.of(context).size.width * 0.24,
                            vertical:
                                MediaQuery.of(context).size.height * 0.016,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '00:32s',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Resend OTP',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              // elevation: 1.0,
                              backgroundColor: HexColor("#FFFFFF"),
                              // padding: EdgeInsets.symmetric(
                              //   // horizontal:
                              //   // MediaQuery.of(context).size.width * 0.14,
                              //   vertical:
                              //       MediaQuery.of(context).size.height * 0.016,
                              // ),
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(20.0),
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
