import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rideo/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: lightWhite, borderRadius: BorderRadius.circular(5.ssp)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(spaceS.ssp),
              child: SvgPicture.asset(flag),
            ),
            SizedBox(width: spaceS.h / 2.h),
            Text(
              '+91',
              style: TextStyle(
                  fontSize: subtitle1.ssp,
                  fontWeight: FontWeight.w700,
                  color: darkGrey),
            ),
            SizedBox(width: spaceS.w),
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.phone,
                style: TextStyle(
                    color: black,
                    fontSize: subtitle1.ssp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: .5),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10)
                ],
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
          ],
        ));
  }
}
