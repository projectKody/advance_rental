import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_demo/framework/choose_plan/choose_plan_screen_controller.dart';
import 'package:web_demo/ui/choose_plan/helper/commonButton.dart';
import 'package:web_demo/ui/choose_plan/helper/plan_commission_details.dart';
import 'package:web_demo/ui/choose_plan/helper/plan_info_screen.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

// ignore: must_be_immutable
class PlanComparisonScreen extends StatelessWidget
    with Constant, ConstantStrings {
  ChoosePlanScreenController? choosePlanWatch;

  PlanComparisonScreen({Key? key, this.choosePlanWatch}) : super(key: key);

  /// Main Build
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Container(),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    textBronze,
                    style: TextStyles.txtBold19.copyWith(
                      color: clr0xff293897,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    textSilver,
                    style: TextStyles.txtBold19.copyWith(
                      color: clr0xff293897,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    textGold,
                    style: TextStyles.txtBold19.copyWith(
                      color: clr0xff293897,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    textPlatinum,
                    style: TextStyles.txtBold19.copyWith(
                      color: clr0xff293897,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          color: clr0xffEEEEF8,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: PlanInfoWidget(
            title: 'AEPS/ATM extra commission per transaction',
            bronze: 'Upto ₹3',
            silver: 'Upto ₹3',
            gold: 'Upto ₹3',
            platinum: 'Upto ₹3',
            isViewPlan: true,
            onTap: () {
              showWidgetDialog(
                context,
                Container(
                  height: 470.h,
                  width: 570.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  child: PlanCommissionDetailsWidget(
                    choosePlanWatch: choosePlanWatch,
                  ),
                ),
                () {},
              );
            },
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: clr0xffEEEEF8,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: PlanInfoWidget(
            title: 'DMT monthly extra commission',
            bronze: '-',
            silver: '-',
            gold: '0.02%',
            platinum: '0.02%',
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: clr0xffEEEEF8,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: PlanInfoWidget(
            title: 'A/c Opening extra commission',
            bronze: '-',
            silver: '-',
            gold: '₹3',
            platinum: '₹3',
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: clr0xffEEEEF8,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: PlanInfoWidget(
            title: 'ATM Device Discount',
            bronze: '-',
            silver: '-',
            gold: '₹200',
            platinum: '₹200',
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: clr0xffEEEEF8,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: PlanInfoWidget(
            title: 'IRCTC ID Discount',
            bronze: '-',
            silver: '-',
            gold: '₹400',
            platinum: '₹400',
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: clr0xffEEEEF8,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: PlanInfoWidget(
            title: 'Biometric Device Discount',
            bronze: '-',
            silver: '-',
            gold: '₹200',
            platinum: '₹200',
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: clr0xffEEEEF8,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: PlanInfoWidget(
            title: 'Printer Discount',
            bronze: '-',
            silver: '-',
            gold: '₹500',
            platinum: '₹500',
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: clr0xffEEEEF8,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: PlanInfoWidget(
            title: 'Voice Alerts',
            bronze: '-',
            silver: '-',
            gold: 'Free',
            platinum: 'Free',
          ),
        ),
        SizedBox(
          height: 36.h,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: CommonButton(
            title: textUpgradeNow,
            onTap: () {},
            height: 71.h,
            width: 380.w,
          ),
        ),
      ],
    );
  }
}
