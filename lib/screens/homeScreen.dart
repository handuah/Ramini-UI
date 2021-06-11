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
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.07,
            // ),
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
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width / 2.1,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01,
                          horizontal: MediaQuery.of(context).size.width * 0.007,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Image(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                image: AssetImage('assets/avatar.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              'Three Chairs',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w300,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'GHC 1000',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Material(
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: HexColor("#F74463"),
                                  // shape: RoundedRectangleBorder(),
                                  child: IconButton(
                                    icon: Icon(Icons.shopping_cart_outlined),
                                    color: HexColor("#FFFFFF"),
                                    iconSize: 20.0,
                                    splashColor: Colors.grey,
                                    splashRadius: 25.0,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.026,
                  ),
                  Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width / 2.1,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01,
                          horizontal: MediaQuery.of(context).size.width * 0.007,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Image(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                image: AssetImage('assets/avatar.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              'Three Chairs',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w300,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'GHC 1000',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Material(
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: HexColor("#F74463"),
                                  // shape: RoundedRectangleBorder(),
                                  child: IconButton(
                                    icon: Icon(Icons.shopping_cart_outlined),
                                    color: HexColor("#FFFFFF"),
                                    iconSize: 20.0,
                                    splashColor: Colors.grey,
                                    splashRadius: 25.0,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.026,
                  ),
                  Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width / 2.1,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01,
                          horizontal: MediaQuery.of(context).size.width * 0.007,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Image(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                image: AssetImage('assets/avatar.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              'Three Chairs',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w300,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'GHC 1000',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Material(
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: HexColor("#F74463"),
                                  // shape: RoundedRectangleBorder(),
                                  child: IconButton(
                                    icon: Icon(Icons.shopping_cart_outlined),
                                    color: HexColor("#FFFFFF"),
                                    iconSize: 20.0,
                                    splashColor: Colors.grey,
                                    splashRadius: 25.0,
                                    onPressed: () {},
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'POPULAR CATEGORIES',
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
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width / 2.1,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01,
                          horizontal: MediaQuery.of(context).size.width * 0.007,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Image(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                image: AssetImage('assets/avatar.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              'Three Chairs',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w300,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'GHC 1000',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Material(
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: HexColor("#F74463"),
                                  // shape: RoundedRectangleBorder(),
                                  child: IconButton(
                                    icon: Icon(Icons.shopping_cart_outlined),
                                    color: HexColor("#FFFFFF"),
                                    iconSize: 20.0,
                                    splashColor: Colors.grey,
                                    splashRadius: 25.0,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.026,
                  ),
                  Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width / 2.1,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01,
                          horizontal: MediaQuery.of(context).size.width * 0.007,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Image(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                image: AssetImage('assets/avatar.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              'Three Chairs',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w300,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'GHC 1000',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Material(
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: HexColor("#F74463"),
                                  // shape: RoundedRectangleBorder(),
                                  child: IconButton(
                                    icon: Icon(Icons.shopping_cart_outlined),
                                    color: HexColor("#FFFFFF"),
                                    iconSize: 20.0,
                                    splashColor: Colors.grey,
                                    splashRadius: 25.0,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.026,
                  ),
                  Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width / 2.1,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01,
                          horizontal: MediaQuery.of(context).size.width * 0.007,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Image(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                image: AssetImage('assets/avatar.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              'Three Chairs',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w300,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'GHC 1000',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Material(
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: HexColor("#F74463"),
                                  // shape: RoundedRectangleBorder(),
                                  child: IconButton(
                                    icon: Icon(Icons.shopping_cart_outlined),
                                    color: HexColor("#FFFFFF"),
                                    iconSize: 20.0,
                                    splashColor: Colors.grey,
                                    splashRadius: 25.0,
                                    onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
