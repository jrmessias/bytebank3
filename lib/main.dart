import 'package:bytebank2/screens/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => (runApp(ByteBankApp()));

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Only portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
//        primarySwatch: Colors.green[900],
        primaryColor: Colors.green[900],
        accentColor: Colors.green[600],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.orangeAccent,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      darkTheme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
//        primarySwatch: Colors.purple[900],
        primaryColor: Colors.purple[900],
        accentColor: Colors.purple[600],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.orangeAccent,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Splash(),
    );
  }
}
