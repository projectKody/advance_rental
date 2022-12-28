import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_demo/ui/promote_business/mobile/promote_business_mobile_screen.dart';

class PromoteBusinessScreen extends StatelessWidget {
  const PromoteBusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      /// Mobile View
      mobile: const PromoteBusinessMobileScreen(),
      tablet: Container(),

      /// Web View
      desktop: Container(),
    );
  }

}

