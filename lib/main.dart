import 'package:flutter/material.dart';

void main() => runApp(GoodWelchi());

class GoodWelchi extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'GoodWelchi',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home:Scaffold(
        body:Center(
          child: Text('Hello Flutter'),
        )
      )
    );
  }
}
