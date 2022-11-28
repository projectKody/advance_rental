import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_demo/framework/choose_plan/choose_plan_provider.dart';
import 'package:web_demo/framework/choose_plan/choose_plan_screen_controller.dart';
import 'package:web_demo/ui/choose_plan/helper/commonButton.dart';
import 'package:web_demo/ui/choose_plan/helper/common_card.dart';
import 'package:web_demo/ui/choose_plan/helper/plan_comparision_screen.dart';
import 'package:web_demo/ui/choose_plan/helper/plan_confirmation.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

class ChoosePlanWebScreen extends ConsumerStatefulWidget {
  const ChoosePlanWebScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ChoosePlanWebScreen> createState() =>
      _ChoosePlanWebScreenState();
}

class _ChoosePlanWebScreenState extends ConsumerState<ChoosePlanWebScreen>
    with Constant, ConstantStrings {
  /// Init State
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      final choosePlanWatch = ref.watch(choosePlanProvider);
      choosePlanWatch.addPlans();
    });
  }

  @override
  Widget build(BuildContext context) {
    final choosePlanWatch = ref.watch(choosePlanProvider);
    return Scaffold(
      body: bodyWidget(choosePlanWatch),
    );
  }

  /// Widget body
  Widget bodyWidget(ChoosePlanScreenController choosePlanWatch) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topBarView(),
              SizedBox(
                height: 35.h,
              ),

              /// Card View
              choosePlanWatch.planList.isNotEmpty
                  ? SizedBox(
                      height: 550.h,
                      child: cardList(choosePlanWatch),
                    )
                  : const SizedBox(),
              SizedBox(
                height: 46.h,
              ),
              Text(
                textDiscoverFeaturesAndComparePlans,
                style: TextStyles.txtMedium15
                    .copyWith(color: clrBlack.withOpacity(0.7)),
              ),
              SizedBox(
                height: 17.h,
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 15.h,
                  color: clrBlack,
                ),
              ),
              SizedBox(
                height: 51.h,
              ),
              PlanComparisonScreen(choosePlanWatch: choosePlanWatch),
            ],
          ),
        ),
      ),
    );
  }

  /// Top Bar View
  Widget topBarView() {
    return Column(
      children: [
        Container(
          height: 57.h,
          width: 57.h,
          decoration: BoxDecoration(
            border: Border.all(color: clr0xff707070),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          height: 9.h,
        ),
        Text(
          textIntroducingSpicePreferredPlans,
          style: TextStyles.txtBold28.copyWith(color: clrBlack),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          textChooseYourPlan,
          style: TextStyles.txtRegular18.copyWith(color: clrBlack),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  /// Widget List View
  Widget cardList(ChoosePlanScreenController choosePlanWatch) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: choosePlanWatch.planList.length,
      itemBuilder: (context, index) {
        return CommonCard(
          beginColor: choosePlanWatch.planList[index].beginColor,
          endColor: choosePlanWatch.planList[index].endColor,
          featureList: choosePlanWatch.planList[index].features,
          featureAvailabilityList: choosePlanWatch.planList[index].isAvailable,
          type: choosePlanWatch.planList[index].title,
          plan: choosePlanWatch.planList[index].planType,
          planPrice: choosePlanWatch.planList[index].planPrice,
          planValidity: choosePlanWatch.planList[index].planValidity,
          isPopular: index == 3,
          onTap: () {
            overlyScreen(context,
                title: choosePlanWatch.planList[index].title,
                subTitle: choosePlanWatch.planList[index].planValidity);
          },
          isActive: index == 0,
        );
      },
    );
  }
}
