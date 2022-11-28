import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_demo/ui/choose_plan/choose_plan_screen.dart';
import 'package:web_demo/ui/choose_plan/web/choose_plan_web_screen.dart';
import 'package:web_demo/utils/theme_const.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,

      /// Color for Android
      statusBarBrightness: Brightness.light,

      /// Dark == white status bar -- for IOS.
      statusBarIconBrightness: Brightness.dark

      /// color for Android
      ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with Constant {
  /// Init State
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  /// build
  @override
  Widget build(BuildContext context) {
    /// Orientation Portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    /// Theme For Status Bar & Navigation Bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

        /// Color for Android
        systemNavigationBarColor: clrBlack,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,

        /// Color for iOS
        statusBarIconBrightness: Brightness.light

        /// Color for Android
        ));
    return ScreenUtilInit(
      designSize: const Size(1366, 768),
      builder: (BuildContext context, Widget? child) => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChoosePlanScreen(),
      ),
    );
  }
}
