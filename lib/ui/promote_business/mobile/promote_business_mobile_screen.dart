import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

class PromoteBusinessMobileScreen extends StatefulWidget {
  const PromoteBusinessMobileScreen({Key? key}) : super(key: key);

  @override
  _PromoteBusinessMobileScreenState createState() => _PromoteBusinessMobileScreenState();
}

class _PromoteBusinessMobileScreenState extends State<PromoteBusinessMobileScreen> with Constant {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: clr0xffF4F4FC,
        leading: Icon(
          Icons.arrow_back,color: clrBlack,
        ),
        elevation: 0,
        actions: [
          Align(alignment: Alignment.centerRight,child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Image.asset(icHindi),
          ))
        ],
      ),
      body: bodyWidget(),
    );
  }

  Widget bodyWidget() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          topWidget(),

          SizedBox(height: 24.h,),

          howItWorksWidget(),

          frequentlyAskQuestionWidget(),

          SizedBox(height: 82.h,),
          
        ],
      ),
    );
  }


  /// step image with description
  Widget commonStepImageText(String stepImage,String step,String stepDes,String stepDes2,TextStyle stepDesTextStyle,TextStyle stepDes1TextStyle){
    return Row(
      children: [
        Image.asset(stepImage),
        SizedBox(width: 12.h,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(step,style: TextStyles.txtMedium15,),

            RichText(
              text: TextSpan(
                  text: stepDes,
                  style: stepDesTextStyle,
                  children: <TextSpan>[
                    TextSpan(text: stepDes2,
                        style: stepDes1TextStyle,
                    )
                  ]
              ),
            ),

            // Text(stepDes,style: TextStyles.txtRegular14,)
          ],
        )
      ],
    );
  }

  Widget howItWorksWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ConstantStrings().textHOWITWORKS,style: TextStyles.txtRegular14,),
          SizedBox(height: 24.h,),

          commonStepImageText(icStep1,ConstantStrings().textStep1, ConstantStrings().textEnterYour," ${ConstantStrings().textShopNameType}",TextStyles.txtRegular14,TextStyles.txtBold14),
          SizedBox(height: 25.h,),
          commonStepImageText(icStep2,ConstantStrings().textStep2, ConstantStrings().textEditTheReadyMadePoster," ${ConstantStrings().textTemplate}",TextStyles.txtRegular14,TextStyles.txtBold14),
          SizedBox(height: 25.h,),
          commonStepImageText(icStep3,ConstantStrings().textStep3, ConstantStrings().textShare," ${ConstantStrings().textYourPracharWithYourCustomers}",TextStyles.txtBold14,TextStyles.txtRegular14),
          SizedBox(height: 41.h,),

        ],
      ),
    );
  }

  Widget frequentlyAskQuestionWidget() {
    return Container(
      color: clr0xffF5F5F8,
      width: double.infinity,
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("FREQUENTLY ASKED QUESTIONS",style: TextStyles.txtBold10,),
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:3.h),
                            child: Container(
                              height: 6.h,
                              width: 6.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: clrBlack),
                            ),
                          ),
                          SizedBox(width: 10.h,),
                          Expanded(
                            child: Text(
                              "How many banners we can create at one time?",
                              style: TextStyles.txtMedium12,
                              selectionColor: clrBlack,
                            ),
                          ),
                        ],
                      ),
                      collapsedIconColor: clrBlack,
                      collapsedTextColor: clrBlack,
                      iconColor: clrBlack,
                      tilePadding: EdgeInsets.zero,
                      childrenPadding: EdgeInsets.zero,
                      children:  [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Row(
                            children: [
                              SizedBox(width: 20.w,),
                              Expanded(child: Text("You can create one banner at a time and share with your customers through WhatsApp or Facebook",style: TextStyles.txtRegular12,)),
                            ],
                          ),
                        )
                      ],),
                  ],
                );
              })),
        ],
      ),
    );
  }

  Widget topWidget() {
    return Stack(
      children: [
        ClipPath(
          clipper: ClipFromBottom(),
          child: Container(
            color: clr0xffF4F4FC,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Image.asset(icSpiceMoneyPrachar)),
                SizedBox(height: 16.h,),
                Text(ConstantStrings().textPromoteYourBusinessForFree,style: TextStyles.txtRegular22,),
                SizedBox(height: 7.h,),
                Text(ConstantStrings().textCreateOffersUsingOurEditableTemplatesAndPromoteYourProductsServices,style: TextStyles.txtRegular16,textAlign: TextAlign.center,),
                SizedBox(height: 30.h,),
                Image.asset(icVideoBg),
                SizedBox(height: 30.h,)
              ],
            ),
          ),
        ),
        Positioned.fill(child: Align(alignment: Alignment.bottomCenter,child: Image.asset(icDownArrow))),
      ],
    );
  }
}

class ClipFromBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path edgePath = Path();
    edgePath.lineTo(0, 0);
    edgePath.lineTo(size.width, 0);
    edgePath.lineTo(size.width, size.height);
    edgePath.lineTo(0, size.height * 0.9134219);
    edgePath.lineTo(0, 0);
    edgePath.close();
    return edgePath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
