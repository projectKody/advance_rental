import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_demo/framework/choose_plan/choose_plan_screen_controller.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

// ignore: must_be_immutable
class PlanCommissionDetailsWidget extends StatelessWidget
    with Constant, ConstantStrings {
  ChoosePlanScreenController? choosePlanWatch;

  PlanCommissionDetailsWidget({Key? key, this.choosePlanWatch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        topView(context),
        SizedBox(
          height: 13.h,
        ),
        headerView(),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: choosePlanWatch?.commissionList.length,
            itemBuilder: (context, index) {
              final item = choosePlanWatch?.commissionList[index];
              return commonView(
                amount: item?.amount ?? '',
                commission: item?.commission ?? '',
              );
            },
          ),
        ),
      ],
    );
  }

  /// Widget top view
  Widget topView(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 10.w,
        ),
        Text(
          textSpecialPlan,
          style: TextStyles.txtBold15.copyWith(color: clrBlack),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: 24.h,
            width: 24.h,
            decoration: BoxDecoration(
              color: clr0xffE4E4E4,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.close,
              size: 10.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Widget header view
  Widget headerView() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 46.h,
            decoration: BoxDecoration(
              color: clr0xffF7F7F7,
              border: Border.all(color: clr0xff707070.withOpacity(0.4)),
            ),
            child: Center(
              child: Text(
                textAmountSlab,
                style: TextStyles.txtBold14.copyWith(color: clrBlack),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 46.h,
            decoration: BoxDecoration(
              color: clr0xffF7F7F7,
              border: Border.all(color: clr0xff707070.withOpacity(0.4)),
            ),
            child: Center(
              child: Text(
                textCommission,
                style: TextStyles.txtBold14.copyWith(color: clrBlack),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Widget header view
  Widget commonView({String amount = "", String commission = ""}) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 46.h,
            decoration: BoxDecoration(
              color: clr0xffF7F7F7,
              border: Border.all(color: clr0xff707070.withOpacity(0.4)),
            ),
            child: Center(
              child: Text(
                amount,
                style: TextStyles.txtRegular15.copyWith(color: clrBlack),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 46.h,
            decoration: BoxDecoration(
              color: clr0xffF7F7F7,
              border: Border.all(color: clr0xff707070.withOpacity(0.4)),
            ),
            child: Center(
              child: Text(
                commission,
                style: TextStyles.txtRegular15.copyWith(color: clrBlack),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
