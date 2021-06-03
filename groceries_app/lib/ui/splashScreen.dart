import 'package:flutter/material.dart';
final bgColor = Color(0xff53B175);

void main() => runApp(new MySplashScreen());
class MySplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Splash Screnn',
      home: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Image.asset('images/logo.png',
          width: 267.42,
          height: 68.61,),
        )
      ),
    );
  }
}