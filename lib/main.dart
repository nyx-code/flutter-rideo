import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideo/screens/SplashScreen.dart';
import 'package:rideo/screens/app/CancelTripScreen.dart';
import 'package:rideo/screens/app/RideHistoryScreen.dart';
import 'package:rideo/screens/auth/LoginScreen.dart';
import 'package:rideo/style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryMaterialColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Source Sans Pro',
      ),
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375.0, 812.0), allowFontScaling: true);

    print('Width: ${MediaQuery.of(context).size.width}');
    print('Height: ${MediaQuery.of(context).size.height}');
    return Scaffold(
      body: CancelTripScreen(),
    );
  }
}
