import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:web_demo/ui/choose_plan/helper/commonButton.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

overlyScreen(
  BuildContext context, {
  String? title,
  String? subTitle,
  String? subTitle2,
  Function()? dismissBlock,
} /* {int? milliSeconds}*/) async {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => Dialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 36.w),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(ScreenUtil().setWidth(10))),
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Container(
                  color: Constant().clrWhite,
                  width: 420.w,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Row(
                              children: [
                                Text(
                                  ConstantStrings().textPlanConfirmation,
                                  style: TextStyles.txtBold22,
                                ),
                                const Spacer(),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Constant().clr0xff9AA2B0,
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                    padding: EdgeInsets.all(5.sp),
                                    child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                          dismissBlock!();
                                        },
                                        child: Icon(
                                          Icons.clear,
                                          color: Constant().clrBlack,
                                          size: 24.sp,
                                        ))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Row(
                              children: [
                                // Container(
                                //   height: 57.h,
                                //   width: 57.h,
                                //   decoration: BoxDecoration(
                                //     border: Border.all(
                                //         color: Constant().clr0xff707070),
                                //     shape: BoxShape.circle,
                                //   ),
                                // ),
                                Lottie.asset(Constant().icMainLogo),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title ?? ''
                                      //ConstantStrings().textBronze
                                      ,
                                      style: TextStyles.txtBold17,
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(
                                      subTitle ?? ''
                                      //ConstantStrings().textBronzeValidity
                                      ,
                                      style: TextStyles.txtRegular14.copyWith(
                                          color: Constant().clr0xff707070),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Price",
                                      style: TextStyles.txtRegular16,
                                    ),
                                    Text(
                                      "Validity",
                                      style: TextStyles.txtRegular16,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 150.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\$999",
                                      style: TextStyles.txtMedium16,
                                    ),
                                    Text(
                                      "1 Month",
                                      style: TextStyles.txtMedium16,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Container(
                            color: Constant().clr0xffEEEEF8,
                            height: 6.h,
                            width: double.infinity,
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ConstantStrings().textUpcomingCharges,
                                  style: TextStyles.txtBold16,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 10.h,
                                          width: 10.h,
                                          decoration: BoxDecoration(
                                            color: Constant().clr0xff1CC17D,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Container(
                                          height: 30.h,
                                          width: 3.w,
                                          decoration: BoxDecoration(
                                            color: Constant().clr0xff1CC17D,
                                          ),
                                        ),
                                        Container(
                                          height: 10.h,
                                          width: 10.h,
                                          decoration: BoxDecoration(
                                            color: Constant().clr0xff1CC17D,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ConstantStrings().textNewPlanStart,
                                          style: TextStyles.txtRegular16,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          ConstantStrings().textNextRenewal,
                                          style: TextStyles.txtRegular16,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 70.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '22 Nov 2022',
                                          style: TextStyles.txtRegular16,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          '23 Nov 2022',
                                          style: TextStyles.txtRegular16,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Container(
                            color: Constant().clr0xffEEEEF8,
                            height: 6.h,
                            width: double.infinity,
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ConstantStrings().textTerms,
                                  style: TextStyles.txtBold16,
                                ),
                                Container(
                                  height: 5.h,
                                ),
                                ContainerWithBullet(
                                    title: ConstantStrings().textTermsContent1),
                                SizedBox(
                                  height: 12.h,
                                ),
                                ContainerWithBullet(
                                    title: ConstantStrings().textTermsContent2),
                                SizedBox(
                                  height: 12.h,
                                ),
                                ContainerWithBullet(
                                    title: ConstantStrings().textTermsContent3),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Container(
                            color: Constant().clr0xffEEEEF8,
                            height: 6.h,
                            width: double.infinity,
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "White Balance",
                                    style: TextStyles.txtBold16,
                                  ),
                                  Text(
                                    "₹32,500/-",
                                    style: TextStyles.txtRegular16,
                                  ),
                                  SizedBox(
                                    height: 14.h,
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 31.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: CommonButton(
                              title: ConstantStrings().textConfirm,
                              onTap: () {
                                showWidgetDialog(
                                  context,
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.w, vertical: 20.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    child: congratulationsDialog(context),
                                  ),
                                  () {},
                                );
                              },
                              width: double.infinity,
                              height: 55.h,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ));
  // Future.delayed(Duration(milliseconds:milliSeconds ?? 1000),(){
  //   // Navigator.pop(context);
  //   // dismissBlock();
  // });
}

class ContainerWithBullet extends StatelessWidget {
  final String title;

  const ContainerWithBullet({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 5.h,
          width: 5.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Constant().clr0xff707070.withOpacity(0.4),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          title,
          style: TextStyles.txtRegular15.copyWith(
            color: Constant().clr0xff000089.withOpacity(0.3),
          ),
          overflow: TextOverflow.clip,
          maxLines: 2,
        ),
      ],
    );
  }
}

Widget congratulationsDialog(BuildContext context) {
  return Column(
    children: [
      Container(
        height: 100.h,
        width: 200.w,
        decoration: BoxDecoration(
          border: Border.all(color: Constant().clrBlack),
        ),
      ),
      SizedBox(
        height: 36.h,
      ),
      Text(
        ConstantStrings().textCongratulations,
        style: TextStyles.txtBold22.copyWith(color: Constant().clrBlack),
      ),
      SizedBox(
        height: 23.h,
      ),
      SizedBox(
        width: 380.w,
        child: Text(
          ConstantStrings().textExtraCongratsContent,
          style: TextStyles.txtRegular18.copyWith(color: Constant().clrBlack),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(
        height: 46.h,
      ),
      CommonButton(
        title: ConstantStrings().textOkay,
        onTap: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
          
        },
        height: 54.h,
        width: 373.w,
      )
    ],
  );
}
