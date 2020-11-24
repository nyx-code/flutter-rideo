import 'package:flutter/material.dart';
import 'package:rideo/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          SvgPicture.asset(
            map,
            fit: BoxFit.cover,
          ),
          Container(
            child: Center(
              child: SvgPicture.asset(icon),
            ),
          ),
        ],
      ),
    );
  }
}
