import 'package:flutter/material.dart';
import 'package:sale_your_food/screens/cart.dart';
import 'package:sale_your_food/screens/login.dart';

import 'screens/checkout.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffff9f0a),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CheckOutScreen(),
    );
  }
}
