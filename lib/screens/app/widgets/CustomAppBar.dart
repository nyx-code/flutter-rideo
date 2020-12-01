import 'package:flutter/material.dart';
import 'package:rideo/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Widget leading;

  const CustomAppBar(
      {Key key, @required this.title, this.onPress, @required this.leading})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: paddingM.w + paddingS.w,
          vertical: paddingM.h + paddingS.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(onTap: onPress ?? () {}, child: leading),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: black,
                    fontSize: subtitle1.ssp + 2.ssp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
