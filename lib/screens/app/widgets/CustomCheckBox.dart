import 'package:flutter/material.dart';
import 'package:rideo/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBox extends StatefulWidget {
  final String title;
  // final String subtitle;
  final bool defaultValue;
  final Function onChanged;

  const CustomCheckBox({
    Key key,
    @required this.title,
    // @required this.subtitle,
    this.defaultValue = false,
    this.onChanged,
  }) : super(key: key);
  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
            widget.onChanged(isChecked);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (paddingM + paddingS).w, vertical: (paddingS).h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 28.0.w,
                  width: 28.0.w,
                  decoration: BoxDecoration(
                    color: isChecked ? Color(0xFF38B66E) : white,
                    borderRadius: BorderRadius.circular(10.w),
                    border: isChecked
                        ? null
                        : Border.all(
                            color: primaryColor.withOpacity(0.3), width: 2.0),
                  ),
                  child: Icon(Icons.check, color: white),
                ),
                Padding(
                  padding: EdgeInsets.only(left: (paddingM + paddingS).w),
                  child: Text(
                    widget.title,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: black,
                          fontSize: subtitle1.ssp,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: primaryColor.withOpacity(0.3),
          thickness: 2.0,
          indent: 72.w,
        ),
      ],
    );
  }
}
