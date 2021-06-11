import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFFFF"),
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
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications_none_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                        horizontal: MediaQuery.of(context).size.width * 0.01,
                      ),
                      labelText: 'Search',
                      labelStyle: TextStyle(
                        fontFamily: "Alata",
                        fontWeight: FontWeight.w400,
                      ),

                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade100,
                        ),
                      ),

                      // floatingLabelBehavior: FloatingLabelBehavior.always, // floating label always stays on top
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.filter_3_outlined),
                  onPressed: () {},
                ),
              ],
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.002,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'TRENDING PRODUCTS',
                  style: GoogleFonts.alata(
                    textStyle: TextStyle(
                      // letterSpacing: 2,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: HexColor("#000000"),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.005,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homeScreen');
                  },
                  child: Text(
                    'See All',
                    style: GoogleFonts.alata(
                      textStyle: TextStyle(
                        // letterSpacing: 2,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                        color: HexColor("#F74463"),
                      ),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: HexColor("#FFFFFF"),
                    // padding: EdgeInsets.symmetric(
                    //   horizontal: MediaQuery.of(context).size.width * 0.24,
                    //   vertical: MediaQuery.of(context).size.height * 0.016,
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
    );
  }
}
