import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_demo/ui/choose_plan/web/choose_plan_web_screen.dart';
import 'package:web_demo/utils/theme_const.dart';

// ignore: must_be_immutable
class ChoosePlanScreen extends StatelessWidget with Constant {
  ChoosePlanScreen({Key? key}) : super(key: key);

  /// Main Build
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      /// Mobile View
      mobile: Container(),
      tablet: Container(),

      /// Web View
      desktop: const ChoosePlanWebScreen(),
    );
  }
}
