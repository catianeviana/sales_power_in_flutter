import 'package:flutter/material.dart';
import 'package:sales_power/screens/Dashboard.dart';
void main() => runApp(SalesPowerApp());

class SalesPowerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
           visualDensity:  VisualDensity.adaptivePlatformDensity,
           /*
          brightness:     Brightness.light,
          primaryColor:   Color(0xff2270ee),
          accentColor:    Color(0xff4487c7),
          primaryColorLight: Color(0xff6e9eff),
          primaryColorDark: Color(0xff0046bb),
          fontFamily: 'Montserrat',*/
        ),
      );
  }
}
