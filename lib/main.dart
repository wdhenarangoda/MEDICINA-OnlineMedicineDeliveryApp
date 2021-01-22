import 'package:flutter/material.dart';
import 'package:medicina/routs.dart';
import 'package:medicina/screens/Contactus.dart';
import 'package:medicina/screens/checkout/checkout_screen.dart';
import 'package:medicina/screens/splash/splash_screen.dart';
import 'package:medicina/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MEDICINA',
      theme: theme(),
      home: ContactusScreen(),
      // We use routeName so that we dont need to remember the name
      //initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
