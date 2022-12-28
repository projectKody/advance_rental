import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_demo/ui/create_poster/mobile/create_poster_mobile_screen.dart';

class CreatePosterScreen extends StatelessWidget {
  const CreatePosterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      /// Mobile View
      mobile: const CreatePosterMobileScreen(),
      tablet: Container(),

      /// Web View
      desktop: Container(),
    );
  }
}
