import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

// ignore: must_be_immutable
class CommonCard extends StatelessWidget with Constant, ConstantStrings {
  final Color beginColor;
  final Color endColor;
  List<String> featureList;
  List<bool> featureAvailabilityList;
  final String type;
  final String plan;
  final String planPrice;
  final String planValidity;
  bool isPopular;
  final Function() onTap;
  bool isActive;

  CommonCard(
      {Key? key,
      required this.beginColor,
      required this.endColor,
      required this.featureList,
      required this.featureAvailabilityList,
      required this.type,
      required this.plan,
      required this.planPrice,
      required this.planValidity,
      this.isPopular = false,
      this.isActive = false,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500.h,
      width: 300.w,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            beginColor,
            endColor,
          ],
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: isActive && isPopular ? 40.h : 20.h,
              ),
              if (isActive)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: clrBlack),
                      ),
                      child: Center(
                        child: Text(
                          textActive,
                          style: TextStyles.txtBold13.copyWith(color: clrWhite),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expiring 22 Dec 2022',
                            style:
                                TextStyles.txtBold14.copyWith(color: clrWhite),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'Amount paid ₹999',
                            style: TextStyles.txtRegular12
                                .copyWith(color: clrWhite),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              SizedBox(
                height: isActive ? 10.h : 45.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      type,
                      style: TextStyles.txtBold25.copyWith(color: clrWhite),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    featureView(),
                    SizedBox(
                      height: 21.h,
                    ),
                    InkWell(
                      onTap: () {
                        onTap();
                      },
                      child: Container(
                        width: infiniteSize,
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          border: Border.all(color: clrWhite),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Column(
                          children: [
                            Text(
                              plan,
                              style: TextStyles.txtRegular10.copyWith(
                                color: clrWhite.withOpacity(0.7),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: planPrice,
                                  style: TextStyles.txtMedium15.copyWith(
                                    color: clrWhite.withOpacity(0.7),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: planValidity,
                                      style: TextStyles.txtRegular15.copyWith(
                                        color: clrWhite.withOpacity(0.7),
                                      ),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isPopular)
            Positioned(
              top: 0.h,
              right: 0.w,
              child: Image.asset(icSplash),
              // CustomPaint(
              //   size: Size(58.w, (58.w * 0.9614078046593437).toDouble()),
              //   //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              //   painter: PopularCard(),
              // ),
            )
        ],
      ),
    );
  }

  /// Feature List
  Widget featureView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ...List.generate(
          featureList.length,
          (index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 9.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 20.h,
                    width: 20.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: featureAvailabilityList[index] == true
                          ? clrWhite
                          : clrTransparent,
                      border: Border.all(color: clrWhite),
                    ),
                    child: Center(
                      child: Icon(
                        featureAvailabilityList[index] == true
                            ? Icons.check
                            : Icons.close,
                        color: featureAvailabilityList[index] == true
                            ? beginColor
                            : clrWhite,
                        size: 15.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                    child: Text(
                      featureList[index],
                      style: TextStyles.txtRegular16.copyWith(
                        color: featureAvailabilityList[index] == true
                            ? clrWhite
                            : clrWhite.withOpacity(0.7),
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
