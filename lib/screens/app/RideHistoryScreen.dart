import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rideo/constant.dart';
import 'package:rideo/screens/app/widgets/CustomAppBar.dart';
import 'package:rideo/screens/app/widgets/RideHistoryDetailCard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RideHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: "Ride History",
              leading: Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
              ),
            ),
            SizedBox(height: spaceM.h * 3.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RideHistoryDetailCard(
                      rideStartDate: "Nov 10, 04:30PM",
                      rideEndDate: "Nov 10, 05:30PM",
                      rideStartLocation: "Katraj, Ambegoan",
                      rideEndLocation: "Magarpatta City, Pune",
                      travelCost: "₹125.32",
                      travelTime: "1h 0min",
                    ),
                    RideHistoryDetailCard(
                      rideStartDate: "Nov 10, 04:30PM",
                      rideEndDate: "Nov 10, 05:30PM",
                      rideStartLocation: "Katraj, Ambegoan",
                      rideEndLocation: "Magarpatta City, Pune",
                      travelCost: "₹125.32",
                      travelTime: "1h 0min",
                    ),
                    RideHistoryDetailCard(
                      rideStartDate: "Nov 10, 04:30PM",
                      rideEndDate: "Nov 10, 05:30PM",
                      rideStartLocation: "Katraj, Ambegoan",
                      rideEndLocation: "Magarpatta City, Pune",
                      travelCost: "₹125.32",
                      travelTime: "1h 0min",
                    ),
                    RideHistoryDetailCard(
                      rideStartDate: "Nov 10, 04:30PM",
                      rideEndDate: "Nov 10, 05:30PM",
                      rideStartLocation: "Katraj, Ambegoan",
                      rideEndLocation: "Magarpatta City, Pune",
                      travelCost: "₹125.32",
                      travelTime: "1h 0min",
                    ),
                    RideHistoryDetailCard(
                      rideStartDate: "Nov 10, 04:30PM",
                      rideEndDate: "Nov 10, 05:30PM",
                      rideStartLocation: "Katraj, Ambegoan",
                      rideEndLocation: "Magarpatta City, Pune",
                      travelCost: "₹125.32",
                      travelTime: "1h 0min",
                    ),
                    RideHistoryDetailCard(
                      rideStartDate: "Nov 10, 04:30PM",
                      rideEndDate: "Nov 10, 05:30PM",
                      rideStartLocation: "Katraj, Ambegoan",
                      rideEndLocation: "Magarpatta City, Pune",
                      travelCost: "₹125.32",
                      travelTime: "1h 0min",
                    ),
                    RideHistoryDetailCard(
                      rideStartDate: "Nov 10, 04:30PM",
                      rideEndDate: "Nov 10, 05:30PM",
                      rideStartLocation: "Katraj, Ambegoan",
                      rideEndLocation: "Magarpatta City, Pune",
                      travelCost: "₹125.32",
                      travelTime: "1h 0min",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
