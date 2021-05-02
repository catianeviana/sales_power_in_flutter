import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sales_power/screens/Dashboard.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.indigoAccent.shade700,
    ),
  );

  runApp(SalesPowerApp());
}

class SalesPowerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
      title: 'Sales Power',
      theme: ThemeData(
        primaryColor: Colors.indigoAccent.shade400,
        primaryColorDark: Colors.indigoAccent.shade700,
        brightness: Brightness.dark,
      ),
    );
  }
}
