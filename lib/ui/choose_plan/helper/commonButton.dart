import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_demo/utils/theme_const.dart';

class CommonButton extends StatelessWidget with Constant {
  final String title;
  final Function() onTap;
  final double height;
  final double width;
  final TextStyle? textStyle;

  CommonButton({Key? key, required this.title, required this.onTap, required this.height, required this.width, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.h),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              clr0xff293897,
              clr0xff293897,
              clr0xff4050B6,
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: textStyle ?? TextStyles.txtMedium20.copyWith(color: clrWhite),
          ),
        ),
      ),
    );
  }
}
