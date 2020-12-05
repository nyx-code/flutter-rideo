import 'package:flutter/material.dart';
import 'package:rideo/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideo/screens/app/widgets/CustomAppBar.dart';
import 'package:rideo/screens/app/widgets/RatingBar.dart';
import 'package:rideo/widgets/CustomButton.dart';

class RateDriverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: "Rate Driver",
              leading: Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
              ),
            ),
            SizedBox(height: spaceM.h * 2.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(paddingM.ssp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.ssp),
                          color: primaryColor,
                          boxShadow: [
                            BoxShadow(
                                color: black.withOpacity(0.2),
                                offset: Offset(5, 10.h),
                                spreadRadius: 4,
                                blurRadius: 20),
                          ]),
                      child: Icon(
                        Icons.check_rounded,
                        size: 40.ssp,
                        color: white,
                      ),
                    ),
                    SizedBox(height: spaceM.h * 2.h),
                    Text(
                      "Thank you!",
                      style: TextStyle(
                        color: black,
                        fontSize: headline6.ssp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: spaceS.h),
                    Text(
                      "You successfully complete payment.",
                      style: TextStyle(
                        color: black,
                        fontSize: subtitle1.ssp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(paddingL),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: paddingM.h,
                            horizontal: paddingM.w + paddingS.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.ssp),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                  color: black.withOpacity(0.07),
                                  offset: Offset(0, 5.h),
                                  spreadRadius: 5,
                                  blurRadius: 25),
                            ]),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: secondaryColor,
                              radius: 35.ssp,
                              child: CircleAvatar(
                                radius: 35.ssp,
                                backgroundImage:
                                    AssetImage("assets/images/profile.jpeg"),
                              ),
                            ),
                            SizedBox(height: spaceM.h),
                            Text(
                              "Vindel Huskel",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: subtitle1.ssp + 2.ssp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: spaceM.h * 2.h),
                            Text(
                              "Rate Your Trip",
                              style: TextStyle(
                                color: black,
                                fontSize: subtitle2.ssp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: spaceS.h),
                            RatingBar(
                              color: primaryColor,
                              rating: 4,
                            ),
                            SizedBox(height: spaceM.h),
                            TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 3,
                              decoration: InputDecoration(
                                hintText: "Write a thank you note.",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: spaceM.h),
                            CustomButton(title: "Submit"),
                            SizedBox(height: spaceS.h),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
