import 'package:flutter/material.dart';
import 'package:rideo/screens/SplashScreen.dart';
import 'package:rideo/style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryMaterialColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Source Sans Pro',
      ),
      home: SplashScreen(),
    );
  }
}
