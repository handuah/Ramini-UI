import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class Chair extends StatefulWidget {
  // const Chair({ Key? key }) : super(key: key);

  @override
  _ChairState createState() => _ChairState();
}

class _ChairState extends State<Chair> {
  bool isPressed = false;
  bool isStarPressed = false;
  bool isAdded2Cart = false;
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  icon: isPressed
                      ? Icon(Icons.favorite_outline)
                      : Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                  onPressed: () {
                    setState(() {
                      isPressed = !isPressed;
                    });
                  },
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
                      'Chair',
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
                      icon: isStarPressed
                          ? Icon(
                              Icons.star_outline,
                              color: HexColor("#F74463"),
                            )
                          : Icon(
                              Icons.star,
                              color: HexColor("#F74463"),
                            ),
                      onPressed: () {
                        setState(() {
                          isStarPressed = !isStarPressed;
                        });
                      },
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
                      'GHC 1000',
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            DefaultTabController(
              length: 4, // length of tabs
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: HexColor("#F74463"),
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            'Description',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                // color: HexColor("#F74463"),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Reviews',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                // color: HexColor("#F74463"),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Ofers',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                // color: HexColor("#F74463"),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Policy',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                // color: HexColor("#F74463"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5)),
                    ),
                    child: TabBarView(
                      children: [
                        Container(
                          child: Text(
                            'Take your tunes on the go with the powerful JBL Flip 5. Our lightweight Bluetooth speaker goes anywhere. Bad weather? Not to worry. With its waterproof design, you can rock out to our signature sound rain or shine. Move more. Pair two JBL PartyBoost-compatible speakers together for stereo sound or link multiple JBL PartyBoost-compatible speakers to create a bigger party. Enjoy up to 12 hours of play time for your favorite music. Stand it vertical or horizontal and be bold with your choice of 11 vibrant colors.',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                // color: HexColor("#F74463"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Take your tunes on the go with the powerful JBL Flip 5. Our lightweight Bluetooth speaker goes anywhere. Bad weather? Not to worry. With its waterproof design, you can rock out to our signature sound rain or shine. Move more. Pair two JBL PartyBoost-compatible speakers together for stereo sound or link multiple JBL PartyBoost-compatible speakers to create a bigger party. Enjoy up to 12 hours of play time for your favorite music. Stand it vertical or horizontal and be bold with your choice of 11 vibrant colors.',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                // color: HexColor("#F74463"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Take your tunes on the go with the powerful JBL Flip 5. Our lightweight Bluetooth speaker goes anywhere. Bad weather? Not to worry. With its waterproof design, you can rock out to our signature sound rain or shine. Move more. Pair two JBL PartyBoost-compatible speakers together for stereo sound or link multiple JBL PartyBoost-compatible speakers to create a bigger party. Enjoy up to 12 hours of play time for your favorite music. Stand it vertical or horizontal and be bold with your choice of 11 vibrant colors.',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                // color: HexColor("#F74463"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Take your tunes on the go with the powerful JBL Flip 5. Our lightweight Bluetooth speaker goes anywhere. Bad weather? Not to worry. With its waterproof design, you can rock out to our signature sound rain or shine. Move more. Pair two JBL PartyBoost-compatible speakers together for stereo sound or link multiple JBL PartyBoost-compatible speakers to create a bigger party. Enjoy up to 12 hours of play time for your favorite music. Stand it vertical or horizontal and be bold with your choice of 11 vibrant colors.',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                // letterSpacing: 2,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                // color: HexColor("#F74463"),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      color: HexColor("#F74463"),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          '2',
                          style: GoogleFonts.alata(
                            textStyle: TextStyle(
                              // letterSpacing: 2,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#FFFFFF"),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isAdded2Cart = !isAdded2Cart;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        isAdded2Cart ? 'Added to Cart' : 'Add to Cart',
                        style: GoogleFonts.alata(
                          textStyle: TextStyle(
                            // letterSpacing: 2,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            color: HexColor("#FFFFFF"),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ],
                  ),
                  style: TextButton.styleFrom(
                    elevation: 4.0,
                    backgroundColor:
                        isAdded2Cart ? Colors.grey : HexColor("#F74463"),
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.024,
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
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
