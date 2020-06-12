import 'package:flutter/material.dart';
import 'package:sale_your_food/screens/login.dart';

const kSpacingUnit = 10;
const kDarkPrimaryColor = Color(0xFF212121);
const kDarkSecondaryColor = Color(0xFF373737);
const kLightPrimaryColor = Color(0xFFFFFFFF);
const kLightSecondaryColor = Color(0xFFF3F7FB);
const kAccentColor = Color(0xFFFFC107);


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
        brightness: Brightness.dark,
        fontFamily: 'RobotoMono',
        // primaryColor: kLightPrimaryColor,
        canvasColor: kLightPrimaryColor,
        backgroundColor: kLightSecondaryColor,
        accentColor: kAccentColor,
        iconTheme: ThemeData.dark().iconTheme.copyWith(
              color: kDarkSecondaryColor,
            ),
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'RobotoMono',
              bodyColor: kDarkSecondaryColor,
              displayColor: kDarkSecondaryColor,
            ),
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffff9f0a),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
