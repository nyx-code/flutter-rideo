import 'package:flutter/material.dart';
import 'package:rideo/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;

  const CustomButton({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(paddingS.ssp / 2.ssp + paddingS.ssp),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(5.ssp)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.w600,
            fontSize: subtitle1.ssp,
          ),
        ),
      ),
    );
  }
}
