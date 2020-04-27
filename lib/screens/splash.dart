import 'package:bytebank2/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new Dashboard(),
      title: new Text(
        "Bem vindo",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          color: Colors.white,
        ),
      ),
      image: new Image.asset("assets/images/bytebank_logo.png"),
      backgroundColor: Theme.of(context).primaryColor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      onClick: () => {},
      loaderColor: Theme.of(context).accentColor,
    );
  }
}
