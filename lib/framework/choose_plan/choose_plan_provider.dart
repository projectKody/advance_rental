import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_demo/framework/choose_plan/choose_plan_screen_controller.dart';

/// Choose plan Screen Controller
final choosePlanProvider =
    ChangeNotifierProvider((ref) => ChoosePlanScreenController());
