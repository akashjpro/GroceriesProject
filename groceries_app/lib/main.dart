import 'package:flutter/material.dart';
import 'package:groceries_app/ui/onBording.dart';

import 'ui/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}
class _MyAppState extends State<MyApp> {
  bool voxt = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (c, s) => s.connectionState != ConnectionState.done
            ? MySplashScreen()
            : OnBording()
    );
  }
}
