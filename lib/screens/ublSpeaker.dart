import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class UBLSpeakers extends StatefulWidget {
  // const UBLSpeakers({ Key? key }) : super(key: key);

  @override
  _UBLSpeakersState createState() => _UBLSpeakersState();
}

class _UBLSpeakersState extends State<UBLSpeakers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.favorite_outline),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Hero(
                  tag: 'ublspeakers',
                  child: Image(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage('assets/jbl.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'UBL Speakers',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                          // letterSpacing: 2,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                          color: HexColor("#000000"),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.star_outline,
                        color: HexColor("#F74463"),
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      '4.5',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                          // letterSpacing: 2,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: HexColor("#000000"),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'GHC 700',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                          // letterSpacing: 2,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                          color: HexColor("#F74463"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
