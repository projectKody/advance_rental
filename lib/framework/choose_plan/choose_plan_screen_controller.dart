import 'package:flutter/material.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

class ChoosePlanScreenController extends ChangeNotifier
    with Constant, ConstantStrings {
  List<PlanModel> planList = [];
  List<String> featuresList = [];
  List<CommissionModel> commissionList = [];

  addPlans() {
    planList.clear();
    featuresList.clear();
    commissionList.clear();
    featuresList.addAll(
        [textFeature1, textFeature2, textFeature3, textFeature4, textFeature5]);
    planList.addAll(
      [
        PlanModel(
          title: textBronze,
          features: featuresList,
          isAvailable: [true, false, false, false, false],
          planType: textMonthlyPlan,
          planPrice: textBronzePrice,
          beginColor: clr0xffA58775,
          endColor: clr0xff897557,
          planValidity: textBronzeValidity,
        ),
        PlanModel(
          title: textSilver,
          features: featuresList,
          isAvailable: [true, false, false, false, false],
          planType: textQuarterlyPlan,
          planPrice: textSilverPrice,
          beginColor: clr0xff9AA2B0,
          endColor: clr0xff4D5158,
          planValidity: textSilverValidity,
        ),
        PlanModel(
          title: textGold,
          features: featuresList,
          isAvailable: [true, true, true, true, true],
          planType: textQuarterlyPlan,
          planPrice: textGoldPrice,
          beginColor: clr0xffD4B866,
          endColor: clr0xff825B2F,
          planValidity: textGoldValidity,
        ),
        PlanModel(
          title: textPlatinum,
          features: featuresList,
          isAvailable: [true, true, true, true, true],
          planType: textYearlyPlan,
          planPrice: textPlatinumPrice,
          beginColor: clr0xff819083,
          endColor: clr0xff484E5A,
          planValidity: textPlatinumValidity,
        ),
      ],
    );

    commissionList.addAll([
      CommissionModel(amount: "₹200 - ₹299", commission: "₹1.50"),
      CommissionModel(amount: "₹300 - ₹499", commission: "₹1.50"),
      CommissionModel(amount: "₹500 - ₹999", commission: "₹1.50"),
      CommissionModel(amount: "₹1000 - ₹1499", commission: "₹2.00"),
      CommissionModel(amount: "₹1500 - ₹1999", commission: "₹4.00"),
      CommissionModel(amount: "₹2000 - ₹2499", commission: "₹5.00"),
      CommissionModel(amount: "₹2500 - ₹2999", commission: "₹8.00"),
      CommissionModel(amount: "₹3000", commission: "₹10.00"),
      CommissionModel(amount: "₹3001 - ₹3499", commission: "₹10.00"),
      CommissionModel(amount: "₹3001 - ₹3499", commission: "₹10.00"),
      CommissionModel(amount: "₹3500 - ₹4999", commission: "₹10.00"),
      CommissionModel(amount: "₹5000 - ₹7999", commission: "₹10.00"),
      CommissionModel(amount: "₹8000 - ₹10000", commission: "₹10.00"),
    ]);
    notifyListeners();
  }
}

class PlanModel {
  final String title;
  final List<String> features;
  List<bool> isAvailable;
  final String planType;
  final String planPrice;
  final String planValidity;
  final Color beginColor;
  final Color endColor;

  PlanModel({
    required this.title,
    required this.features,
    required this.isAvailable,
    required this.planType,
    required this.planPrice,
    required this.beginColor,
    required this.endColor,
    required this.planValidity,
  });
}

class CommissionModel {
  final String amount;
  final String commission;

  CommissionModel({
    required this.amount,
    required this.commission,
  });
}
