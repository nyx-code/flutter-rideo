import 'package:flutter/material.dart';
import 'package:rideo/constant.dart';
import 'package:rideo/screens/app/widgets/CustomAppBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideo/screens/app/widgets/CustomCheckBox.dart';
import 'package:rideo/widgets/CustomButton.dart';

class CancelTripScreen extends StatefulWidget {
  @override
  _CancelTripScreenState createState() => _CancelTripScreenState();
}

class _CancelTripScreenState extends State<CancelTripScreen> {
  Map<String, bool> values = {
    'Waiting for a long time': true,
    'Ride isn\'t here': true,
    'Wrong address shown': true,
    'Don\'t change rider': true,
    'Others': false,
  };

  @override
  Widget build(BuildContext context) {
    print(values);
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: "Cancel Trip",
              leading: Icon(
                Icons.close,
                color: black,
              ),
            ),
            SizedBox(height: spaceM.h * 2.h),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: values.keys.map((String key) {
                        return CustomCheckBox(
                          title: key,
                          defaultValue: values[key],
                          onChanged: (bool value) {
                            setState(() {
                              values[key] = value;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(paddingL.ssp),
                    child: CustomButton(title: "Submit Reason"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
