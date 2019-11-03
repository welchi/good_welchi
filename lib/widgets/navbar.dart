import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "About", "Works", "Contact"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(text, style: TextStyle(fontFamily: "Montserrat-Bold")),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(colors: [
                    Color(0xFFC86DD7),
                    Color(0xFF3023AE),
                  ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                ),
                child: Center(
                  child: Text("G",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text("GoodWelchi", style: TextStyle(fontSize: 26))
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem()]
            )
          else
            Image.network(
              "assets/menu.png",
              width: 26,
              height: 26,
            )
        ],
      ),
    );
  }
}
