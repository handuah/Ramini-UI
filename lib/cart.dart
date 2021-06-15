import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class Cart extends StatefulWidget {
  // const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Your Cart',
                  style: GoogleFonts.alata(
                    textStyle: TextStyle(
                      // letterSpacing: 2,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CartList('Chair', '1000', 'assets/chair.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CartList('UBL Speakers', '700', 'assets/jbl.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CartList('TCL Android TV', '5000', 'assets/tcl.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CartList('Game Pad', '700', 'assets/gamepad.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CartList('Air Pods 2', '8000', 'assets/ear-buds.png'),
          ],
        ),
      ),
    );
  }
}

// CART LIST CLASS
class CartList extends StatefulWidget {
  final String itemName;
  final String itemAmount;
  final String picUrl;

  const CartList(this.itemName, this.itemAmount, this.picUrl);

  // const CartList({ Key? key }) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
          ),
          child: Image(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            image: AssetImage(widget.picUrl),
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.07,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // 'Chair',
              widget.itemName,
              style: GoogleFonts.alata(
                textStyle: TextStyle(
                  // letterSpacing: 2,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              // 'GHC 700',
              'GHC ' + widget.itemAmount,
              style: GoogleFonts.alata(
                textStyle: TextStyle(
                  // letterSpacing: 2,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  splashRadius: 20.0,
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.grey,
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
                      color: HexColor("#000000"),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
