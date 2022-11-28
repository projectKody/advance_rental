import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

// ignore: must_be_immutable
class PlanInfoWidget extends StatelessWidget with Constant, ConstantStrings {
  final String title;
  final String bronze;
  final String silver;
  final String gold;
  final String platinum;
  bool isViewPlan;
  final Function()? onTap;

  PlanInfoWidget({
    Key? key,
    required this.title,
    required this.bronze,
    required this.silver,
    required this.gold,
    required this.platinum,
    this.isViewPlan = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyles.txtMedium20.copyWith(color: clrBlack),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                bronze,
                style: TextStyles.txtMedium20.copyWith(color: clrBlack),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              flex: 1,
              child: Text(
                silver,
                style: TextStyles.txtMedium20.copyWith(color: clrBlack),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                gold,
                style: TextStyles.txtMedium20.copyWith(color: clrBlack),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                platinum,
                style: TextStyles.txtMedium20.copyWith(color: clrBlack),
              ),
            ),
          ],
        ),
        isViewPlan
            ? Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                      InkWell(
                        onTap: () {
                          onTap!();
                        },
                        child: Container(
                          height: 55.h,
                          width: 482.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(color: clr0xff293897),
                          ),
                          child: Center(
                            child: Text(
                              textViewSpecialPlan,
                              style: TextStyles.txtMedium20
                                  .copyWith(color: clr0xff293897),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            : const Offstage()
      ],
    );
  }
}
