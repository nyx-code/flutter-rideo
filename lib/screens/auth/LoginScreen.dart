import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rideo/constant.dart';
import 'package:rideo/screens/auth/widgets/CustomTextField.dart';
import 'package:rideo/widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: spaceM.h * 8.h),
              SvgPicture.asset(icon),
              SizedBox(height: spaceM.h * 3.h),
              Padding(
                padding: EdgeInsets.all(paddingM.ssp),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(paddingM.ssp + paddingS.ssp),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10.ssp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: Offset(0, 10),
                          blurRadius: 15,
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, nice to meet you!!",
                        style: TextStyle(
                          color: darkGrey,
                          fontWeight: FontWeight.w600,
                          fontSize: subtitle2.ssp,
                        ),
                      ),
                      SizedBox(height: spaceS.h / 2.h),
                      Text(
                        "Most comfort journey for you.",
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w800,
                          fontSize: headline6.ssp,
                        ),
                      ),
                      SizedBox(height: spaceM.h * 2.h),
                      Text(
                        "Enter Your Mobile Number",
                        style: TextStyle(
                          color: darkGrey,
                          fontWeight: FontWeight.w600,
                          fontSize: subtitle2.ssp,
                        ),
                      ),
                      SizedBox(height: spaceS.h),
                      CustomTextField(),
                      SizedBox(height: spaceM.h),
                      CustomButton(title: "Send OTP code"),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 290.w,
                child: Text(
                  "By creating account, you agree to our Terms of Service and Privacy Policy",
                  style: TextStyle(
                      fontSize: subtitle1.ssp,
                      fontWeight: FontWeight.w600,
                      color: white,
                      shadows: <Shadow>[
                        Shadow(
                            color: darkGrey,
                            offset: Offset(0, 3),
                            blurRadius: 6)
                      ]),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: spaceM.h * 3.h)
            ],
          ),
        ],
      ),
    );
  }
}
