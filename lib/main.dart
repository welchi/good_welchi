import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';

void main() => runApp(GoodWelchi());

class GoodWelchi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GoodWelchi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFFF8FBFF), Color(0xFFFCFDFD)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[NavBar()],
        )),
      ),
    );
  }
}
