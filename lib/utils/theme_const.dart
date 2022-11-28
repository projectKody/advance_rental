import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String currency = "₹";

///Set Height
double setHeight(var height) {
  return ScreenUtil().setHeight(height);
}

///Set Width
double setWidth(var width) {
  return ScreenUtil().setWidth(width);
}

///Set SP
double setSp(var fontSize) {
  return ScreenUtil().setSp(fontSize);
}

showWidgetDialog(
    BuildContext context, Widget? widget, Function()? didTakeAction,
    {bool barrierDismissible = true}) {
  return showDialog(
    barrierLabel: "Barrier",
    barrierDismissible: barrierDismissible,
    barrierColor: Colors.black.withOpacity(0.5),
    context: context,
    builder: (_) {
      return Dialog(
        backgroundColor: Constant().clrWhite,
        // alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
        ),
        child: Wrap(
          children: [
            Container(
              margin: EdgeInsets.only(
                  bottom: setWidth(0), left: setWidth(15), right: setWidth(15)),
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: widget,
            ),
          ],
        ),
      );
    },
  );
}

class Constant {
  String appName = "Spice Web";

/*
  * -- Dimen
  * */
  double infiniteSize = double.infinity;

  /*
  * -- Time Formate
  * */
  String str12Hr = "hh:mm a";
  String str24Hr = "hh:mm:ss";

  ///App Language
  String langAR = "ar";
  String langEN = "en";

  /// Currency
  String currency = "₹";

  /*
  * ------------------------ Colors ----------------------------------------- *
  * */
  MaterialColor colorPrimary = MaterialColor(0xffF6253B, colorSwathes);

  static Map<int, Color> colorSwathes = {
    50: const Color.fromRGBO(38, 185, 223, .1),
    100: const Color.fromRGBO(38, 185, 223, .2),
    200: const Color.fromRGBO(38, 185, 223, .3),
    300: const Color.fromRGBO(38, 185, 223, .4),
    400: const Color.fromRGBO(38, 185, 223, .5),
    500: const Color.fromRGBO(38, 185, 223, .6),
    600: const Color.fromRGBO(38, 185, 223, .7),
    700: const Color.fromRGBO(38, 185, 223, .8),
    800: const Color.fromRGBO(38, 185, 223, .9),
    900: const Color.fromRGBO(38, 185, 223, 1),
  };

  Color clrPrimary = const Color(0xff000000);
  Color clrBlack = const Color(0xff000000);
  Color clrTransparent = const Color(0x00000000);
  Color clrNearWhite = const Color(0xffF2F6FA);
  Color clrWhite = const Color(0xffFFFFFF);
  Color clrBorder = const Color(0xff979797);
  Color clrTextGrey = const Color(0xff6B6B6B);
  Color clrTextGreyLight = const Color(0xff8E8E8E);

  /// Spice Add Colors

  Color clr0xffA58775 = const Color(0xffA58775);
  Color clr0xff897557 = const Color(0xff897557);
  Color clr0xff707070 = const Color(0xff707070);
  Color clr0xff060606 = const Color(0xff060606);

  Color clr0xff9AA2B0 = const Color(0xff9AA2B0);
  Color clr0xff4D5158 = const Color(0xff4D5158);

  Color clr0xffD4B866 = const Color(0xffD4B866);
  Color clr0xff825B2F = const Color(0xff825B2F);

  Color clr0xff819083 = const Color(0xff819083);
  Color clr0xff484E5A = const Color(0xff484E5A);

  Color clr0xff91758E = const Color(0xff91758E);
  Color clr0xff293897 = const Color(0xff293897);
  Color clr0xffEEEEF8 = const Color(0xffEEEEF8);
  Color clr0xffE4E4E4 = const Color(0xffE4E4E4);
  Color clr0xffF7F7F7 = const Color(0xffF7F7F7);
  Color clr0xff4050B6 = const Color(0xff4050B6);
  Color clr0xff000089 = const Color(0xff000000);
  Color clr0xff1CC17D = const Color(0xff1CC17D);

  // Color clr0xff897557 = const Color(0xff897557);

/*
  * ------------------------ FontStyle ----------------------------------------- *
  * */
  String fontFamily = "Roboto UI";

  FontWeight fwThin = FontWeight.w100;
  FontWeight fwExtraLight = FontWeight.w200;
  FontWeight fwLight = FontWeight.w300;
  FontWeight fwRegular = FontWeight.w400;
  FontWeight fwMedium = FontWeight.w500;
  FontWeight fwSemiBold = FontWeight.w600;
  FontWeight fwBold = FontWeight.w700;
  FontWeight fwExtraBold = FontWeight.w800;

/*
  * ------------------------ Texts ----------------------------------------- *
  * */

/*
 * ----------------------------- Images---------------------------------------- *
 */

  static String assets = 'assets/images/';

  //splash
  String icSplash = '${assets}ic_popular.png';


  basicDeviceHeightWidth(BuildContext context, Size designSize) {
    return ScreenUtil.init(
      context,
      designSize: designSize,
    );
  }
}

class TextStyles {
  ///-------------10----------------
  static TextStyle get txtRegular10 => TextStyle(
        fontSize: 10.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium10 => TextStyle(
        fontSize: 10.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold10 => TextStyle(
        fontSize: 10.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold10 => TextStyle(
        fontSize: 10.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------12----------------
  static TextStyle get txtRegular12 => TextStyle(
    fontSize: 12.h,
    color: Constant().clrBlack,
    fontFamily: Constant().fontFamily,
    fontWeight: Constant().fwRegular,
  );

  static TextStyle get txtMedium12 => TextStyle(
    fontSize: 12.h,
    color: Constant().clrBlack,
    fontFamily: Constant().fontFamily,
    fontWeight: Constant().fwMedium,
  );

  static TextStyle get txtBold12 => TextStyle(
    fontSize: 12.h,
    color: Constant().clrBlack,
    fontFamily: Constant().fontFamily,
    fontWeight: Constant().fwBold,
  );

  static TextStyle get txtSemiBold12 => TextStyle(
    fontSize: 12.h,
    color: Constant().clrBlack,
    fontFamily: Constant().fontFamily,
    fontWeight: Constant().fwSemiBold,
  );
  ///-------------13----------------
  static TextStyle get txtRegular13 => TextStyle(
    fontSize: 13.h,
    color: Constant().clrBlack,
    fontFamily: Constant().fontFamily,
    fontWeight: Constant().fwRegular,
  );

  static TextStyle get txtMedium13 => TextStyle(
    fontSize: 13.h,
    color: Constant().clrBlack,
    fontFamily: Constant().fontFamily,
    fontWeight: Constant().fwMedium,
  );

  static TextStyle get txtBold13 => TextStyle(
    fontSize: 13.h,
    color: Constant().clrBlack,
    fontFamily: Constant().fontFamily,
    fontWeight: Constant().fwBold,
  );

  static TextStyle get txtSemiBold13 => TextStyle(
    fontSize: 13.h,
    color: Constant().clrBlack,
    fontFamily: Constant().fontFamily,
    fontWeight: Constant().fwSemiBold,
  );

  ///-------------14----------------
  static TextStyle get txtRegular14 => TextStyle(
        fontSize: 14.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium14 => TextStyle(
        fontSize: 14.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold14 => TextStyle(
        fontSize: 14.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold14 => TextStyle(
        fontSize: 14.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------15----------------
  static TextStyle get txtRegular15 => TextStyle(
        fontSize: 15.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium15 => TextStyle(
        fontSize: 15.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold15 => TextStyle(
        fontSize: 15.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold15 => TextStyle(
        fontSize: 15.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------16----------------
  static TextStyle get txtRegular16 => TextStyle(
        fontSize: 16.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium16 => TextStyle(
        fontSize: 16.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold16 => TextStyle(
        fontSize: 16.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold16 => TextStyle(
        fontSize: 16.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------17----------------
  static TextStyle get txtRegular17 => TextStyle(
        fontSize: 17.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium17 => TextStyle(
        fontSize: 17.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold17 => TextStyle(
        fontSize: 17.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold17 => TextStyle(
        fontSize: 17.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------18----------------
  static TextStyle get txtRegular18 => TextStyle(
        fontSize: 18.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium18 => TextStyle(
        fontSize: 18.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold18 => TextStyle(
        fontSize: 18.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold18 => TextStyle(
        fontSize: 18.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------19----------------
  static TextStyle get txtRegular19 => TextStyle(
        fontSize: 19.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium19 => TextStyle(
        fontSize: 19.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold19 => TextStyle(
        fontSize: 19.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold19 => TextStyle(
        fontSize: 19.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------20----------------
  static TextStyle get txtRegular20 => TextStyle(
        fontSize: 20.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium20 => TextStyle(
        fontSize: 20.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold20 => TextStyle(
        fontSize: 20.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold20 => TextStyle(
        fontSize: 20.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------22----------------
  static TextStyle get txtRegular22 => TextStyle(
        fontSize: 22.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium22 => TextStyle(
        fontSize: 22.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold22 => TextStyle(
        fontSize: 22.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold22 => TextStyle(
        fontSize: 22.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------25----------------
  static TextStyle get txtRegular25 => TextStyle(
        fontSize: 25.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium25 => TextStyle(
        fontSize: 25.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold25 => TextStyle(
        fontSize: 25.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold25 => TextStyle(
        fontSize: 25.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );

  ///-------------28----------------
  static TextStyle get txtRegular28 => TextStyle(
        fontSize: 28.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwRegular,
      );

  static TextStyle get txtMedium28 => TextStyle(
        fontSize: 28.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwMedium,
      );

  static TextStyle get txtBold28 => TextStyle(
        fontSize: 28.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwBold,
      );

  static TextStyle get txtSemiBold28 => TextStyle(
        fontSize: 28.h,
        color: Constant().clrBlack,
        fontFamily: Constant().fontFamily,
        fontWeight: Constant().fwSemiBold,
      );
}
