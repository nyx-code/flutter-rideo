import 'package:flutter/material.dart';
import 'package:rideo/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RideHistoryDetailCard extends StatelessWidget {
  final String rideStartDate,
      rideEndDate,
      rideStartLocation,
      rideEndLocation,
      travelTime,
      travelCost;

  const RideHistoryDetailCard(
      {Key key,
      @required this.rideStartDate,
      @required this.rideEndDate,
      @required this.rideStartLocation,
      @required this.rideEndLocation,
      @required this.travelTime,
      @required this.travelCost})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          paddingM.w, 0, paddingM.w, paddingM.h + paddingS.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: white,
            boxShadow: [
              BoxShadow(
                color: black.withOpacity(0.1),
                offset: Offset(0, 7.h),
                blurRadius: 10,
              ),
            ]),
        padding: EdgeInsets.fromLTRB(
            paddingM.w, paddingM.h, paddingM.w * 2.w, paddingM.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: paddingS.h / 2.h),
                      child: Icon(
                        Icons.circle,
                        size: 12.ssp,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(width: spaceM.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          rideStartDate,
                          style: TextStyle(
                            fontSize: caption.ssp,
                            fontWeight: FontWeight.w600,
                            color: darkGrey,
                          ),
                        ),
                        SizedBox(height: spaceS.h / 2.h),
                        Text(
                          rideStartLocation,
                          style: TextStyle(
                            fontSize: subtitle1.ssp,
                            fontWeight: FontWeight.w800,
                            color: black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: spaceM.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: paddingS.h / 2),
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 14.ssp,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(width: spaceM.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          rideEndDate,
                          style: TextStyle(
                            fontSize: caption.ssp,
                            fontWeight: FontWeight.w600,
                            color: darkGrey,
                          ),
                        ),
                        SizedBox(height: spaceS.h / 2.h),
                        Text(
                          rideEndLocation,
                          style: TextStyle(
                            fontSize: subtitle1.ssp,
                            fontWeight: FontWeight.w800,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 90.h,
              child: VerticalDivider(
                color: darkSecondaryColor,
                thickness: 3.w,
                width: 10.w,
              ),
            ),
            SizedBox(width: spaceM.w),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Travel Time",
                      style: TextStyle(
                        fontSize: caption.ssp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    SizedBox(height: spaceS.h / 2.h),
                    Text(
                      travelTime,
                      style: TextStyle(
                        fontSize: subtitle1.ssp,
                        fontWeight: FontWeight.w800,
                        color: black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: spaceM.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Travel Cost",
                      style: TextStyle(
                        fontSize: caption.ssp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    SizedBox(height: spaceS.h / 2.h),
                    Text(
                      travelCost,
                      style: TextStyle(
                        fontSize: subtitle1.ssp,
                        fontWeight: FontWeight.w800,
                        color: black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
