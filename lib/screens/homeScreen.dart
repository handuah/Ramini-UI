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
  // SCAFFOLD KEY
  final GlobalKey<ScaffoldState> _homeScaffoldKey =
      new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homeScaffoldKey,
      extendBody:
          true, //this removes the white space at the begining of Bottom Navigation Bar after curve
      drawer: Drawer(
        elevation: 2.0,
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              color: HexColor("#F74463"),
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
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
                    Text(
                      'Hannah Duah',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                          // letterSpacing: 2,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: HexColor("#FFFFFF"),
                        ),
                      ),
                    ),
                    Text(
                      'handuah@gmail.com',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                          // letterSpacing: 2,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w200,
                          color: HexColor("#FFFFFF"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: HexColor("#F74463"),
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                ),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DrawerItems(Icons.home_outlined, 'Home'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DrawerItems(Icons.shopping_cart_outlined, 'My Cart'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DrawerItems(Icons.bookmark_outlined, 'Upcoming Promotions'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DrawerItems(Icons.card_giftcard_outlined, 'Offer Zone'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DrawerItems(Icons.person, 'My Account'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DrawerItems(Icons.chat_bubble_outline_outlined, 'My Chats'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DrawerItems(Icons.help_outline, 'Help'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            40.0,
          ),
          topRight: Radius.circular(
            40.0,
          ),
        ),
        child: BottomNavigationBar(
          elevation: 4.0,
          backgroundColor: HexColor("#F74960"),
          items: [
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.mail_outlined,
                color: Colors.white,
                size: 24.0,
              ),
              label: '',
              // title: Text('Dashboard'),
              activeIcon: Icon(
                Icons.mail_outlined,
                color: Colors.white,
                size: 24.0,
              ),
            ),
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 24.0,
              ),
              label: '',
              // title: Text('Dashboard'),
              activeIcon: Icon(
                Icons.home_outlined,
                color: HexColor("#5B67CA"),
                size: 24.0,
              ),
            ),
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.verified_user_outlined,
                color: Colors.white,
                size: 24.0,
              ),
              label: '',
              // title: Text('Dashboard'),
              activeIcon: Icon(
                Icons.mail_outlined,
                color: HexColor("#5B67CA"),
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
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
                  onPressed: () {
                    _homeScaffoldKey.currentState
                        .openDrawer(); //OPEN DRAWER ON BUTTON CLICK
                  },
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
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
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/chairDetails');
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Hero(
                                  tag: 'chair',
                                  child: Image(
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    image: AssetImage('assets/chair.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Chairs',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 16.0,
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
                                      fontSize: 14.0,
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
                                    iconSize: 16.0,
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
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/ublDetails');
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
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
                            Text(
                              'UBL Speakers',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 16.0,
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
                                  'GHC 700',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 14.0,
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
                                    iconSize: 16.0,
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
                                image: AssetImage('assets/ear-buds.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'AirPods 2',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 16.0,
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
                                  'GHC 8000',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 14.0,
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
                                    iconSize: 16.0,
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
                    // Navigator.pushNamed(context, '/homeScreen');
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
                                image: AssetImage('assets/gamepad.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'Game Pad',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 16.0,
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
                                  'GHC 700',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 14.0,
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
                                    iconSize: 16.0,
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
                                image: AssetImage('assets/table1.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'Round Centre Table',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 16.0,
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
                                  'GHC 500',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 14.0,
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
                                    iconSize: 16.0,
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
                                image: AssetImage('assets/tcl.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'TCL Android TV',
                              style: GoogleFonts.alata(
                                textStyle: TextStyle(
                                  // letterSpacing: 2,
                                  fontSize: 16.0,
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
                                  'GHC 5000',
                                  style: GoogleFonts.alata(
                                    textStyle: TextStyle(
                                      // letterSpacing: 2,
                                      fontSize: 14.0,
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
                                    iconSize: 16.0,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}

// Drawer List Class
class DrawerItems extends StatefulWidget {
  final IconData iconName;
  final String iconLabel;

  const DrawerItems(this.iconName, this.iconLabel);
  // const DrawerItems({ Key? key }) : super(key: key);

  @override
  _DrawerItemsState createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          // Icons.home_outlined,
          widget.iconName,
          color: Colors.white,
          size: 30.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.06,
        ),
        Text(
          // 'Home',
          widget.iconLabel,
          style: GoogleFonts.alata(
            textStyle: TextStyle(
              // letterSpacing: 2,
              fontSize: 18.0,
              fontWeight: FontWeight.w200,
              color: HexColor("#FFFFFF"),
            ),
          ),
        ),
      ],
    );
  }
}
