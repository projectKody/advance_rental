import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:info_popup/info_popup.dart';
import 'package:web_demo/framework/create_poster/create_poster_controller.dart';
import 'package:web_demo/framework/create_poster/create_poster_provider.dart';
import 'package:web_demo/ui/choose_plan/helper/commonButton.dart';
import 'package:web_demo/utils/constant.dart';
import 'package:web_demo/utils/theme_const.dart';

class CreatePosterMobileScreen extends ConsumerStatefulWidget {
  const CreatePosterMobileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<CreatePosterMobileScreen> createState() => _CreatePosterMobileScreenState();
}

class _CreatePosterMobileScreenState extends ConsumerState<CreatePosterMobileScreen> with Constant, ConstantStrings{

  TextEditingController offerController = TextEditingController();
  TextEditingController textLine2Controller = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final createPosterWatch = ref.watch(createPosterProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: clr0xff293897,
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: Text(textCreateAPoster,style: TextStyles.txtMedium16.copyWith(color: clrWhite),),
        actions: [
          widgetHowItWorks()
        ],
      ),
      body: bodyWidget(createPosterWatch),
      bottomNavigationBar: bottomButton(),
    );
  }

  Widget widgetHowItWorks() {
    return InkWell(
      onTap: (){
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 10.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          height: 25.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: clrWhite
          ),
          child: Row(
            children: [
              Image.asset(icVideoCamera),
              SizedBox(width: 10.h,),
              Text(textHowItWorks,style: TextStyles.txtRegular10.copyWith(color: clr0xff293897),)
            ],
          ),

        ),
      ),
    );
  }

  Widget bodyWidget(CreatePosterController createPosterWatch) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [

            /// edit sample template, hindi image
            editSampleTemplateWidget(),

            /// poster image, shop name, offer name, text line 2
            posterImageTextWidget(createPosterWatch),

            /// change poster text & background
            posterTextBackgroundButton(createPosterWatch),

          ],
        ),
      ),
    );
  }

  Widget editSampleTemplateWidget() {
    return Padding(
      padding:  EdgeInsets.only(bottom: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(textEditSampleTemplate,style: TextStyles.txtBold17.copyWith(color: clrBlack),),
          Image.asset(icHindi)
        ],
      ),
    );
  }

  Widget posterImageTextWidget(CreatePosterController createPosterWatch) {
    return Stack(
      children: [
        /// poster image
        Container(
          height: 472.h,
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0, 0.57],
            ),
          ),
          child: Image.asset(createPosterWatch.arrPosterImage[createPosterWatch.selectedImage],fit: BoxFit.fill,height: 472.h,width: double.infinity,),
        ),
        SizedBox(
          height: 472.h,
          width: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top : 20.h),
                    child: SizedBox(
                      height: 44.h,
                      child: Stack(
                        children: [
                          Align(alignment: Alignment.topCenter,child: Image.asset(icShopNameBG,height: 44.h,fit: BoxFit.fill,)),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: Align(alignment: Alignment.topCenter,child: Text("RAJU MOBILE SHOP".toUpperCase(),style: TextStyles.txtBold12.copyWith(color: clrBlack),)),
                          ),
                        ],
                      ),
                    ),
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 22.h,left: 16.h,right: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /// offer text
                      Text(createPosterWatch.strOfferText,style: TextStyles.txtMedium23.copyWith(color: clrWhite),textAlign: TextAlign.center),

                      SizedBox(height: 10.h,),

                      /// text line 2
                      Text(createPosterWatch.strAddressLine2,style: TextStyles.txtRegular10.copyWith(color: clrWhite),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }

  /// confirm button
  Widget bottomButton() {
    return Padding(
      padding:  EdgeInsets.all(16.h),
      child: CommonButton(
        title: ConstantStrings().textConfirm,
        onTap: () {
        },
        width: double.infinity,
        textStyle: TextStyles.txtMedium17.copyWith(color: clrWhite),
        height: 45.h,
      ),
    );
  }

  changePosterTextBottomSheet(CreatePosterController createPosterWatch){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: clrWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50.r)),
        ),
        builder: (builder){
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 16.h,top: 16.h,left: 16.h,right: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Image.asset(icCloseGrey,height: 28.h,width: 28.h,))),
                  Text(ConstantStrings().textChangePosterText,style: TextStyles.txtBold22,),
            SizedBox(height: 24.h,),
            TextField(
                controller: offerController,
                maxLines: 3,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                style: TextStyles.txtRegular16.copyWith(color: clrBlack),
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  labelText:ConstantStrings().textEnterOfferText,
                  alignLabelWithHint: true,
                  isDense: true,
                  labelStyle: TextStyles.txtRegular12.copyWith(color: clr0xff293897),
                  border: OutlineInputBorder(borderSide: BorderSide(color: clr0xff293897),borderRadius: BorderRadius.circular(5.r)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: clr0xff293897),borderRadius: BorderRadius.circular(5.r)),
                )),
                SizedBox(height: 16.h,),
                Text(ConstantStrings().textOrSelectFromTemplates,style: TextStyles.txtBold17,),
                SizedBox(height: 16.h,),
                SizedBox(
                  height: 68.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: createPosterWatch.arrTemplate.length,
                      itemBuilder: (context,index){
                    return Container(
                      height: 68.h,
                      width: 200.h,
                      padding: EdgeInsets.all(8.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: clr0xffEBF2F8
                      ),
                      child: InkWell(
                        onTap: (){
                          offerController.text = createPosterWatch.arrTemplate[index]["offerText"]!;
                          textLine2Controller.text = createPosterWatch.arrTemplate[index]["addressLine2"]!;
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(createPosterWatch.arrTemplate[index]["offerText"]!,style: TextStyles.txtBold11,),
                            SizedBox(height: 5.h,),
                            Text(createPosterWatch.arrTemplate[index]["addressLine2"]!,style: TextStyles.txtBold11,),
                          ],
                        ),
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 11.h,);
                  },),
                ),
                SizedBox(height: 27.h,),
                TextField(
                    controller: textLine2Controller,
                    maxLines: 3,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    style: TextStyles.txtRegular16.copyWith(color: clrBlack),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText:ConstantStrings().textTextLine2,
                      alignLabelWithHint: true,
                      labelStyle: TextStyles.txtRegular12.copyWith(color: clr0xff293897),
                      border: OutlineInputBorder(borderSide: BorderSide(color: clr0xff293897),borderRadius: BorderRadius.circular(5.r)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: clr0xff293897),borderRadius: BorderRadius.circular(5.r)),
                    )),
                SizedBox(height: 32.h,),
                CommonButton(title: ConstantStrings().textUpdateText, onTap: (){
                  createPosterWatch.updateOfferTextAddressLine(offerController.text,textLine2Controller.text);
                  Navigator.pop(context);
                }, height: 44.h, width: double.infinity,textStyle: TextStyles.txtMedium17.copyWith(color: clrWhite),)
              ],
            ),
          );
        }
    );
  }

  changePosterBackgroundBottomSheet(){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: clrWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50.r)),
        ),
        builder: (builder){
          return Consumer(
            builder: (context,ref,child) {
              final createPosterWatch = ref.watch(createPosterProvider);
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom + 16.h,top: 16.h,left: 16.h,right: 16.h),
                child: SizedBox(
                  height: 600.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                              child: Image.asset(icCloseGrey,height: 28.h,width: 28.h,))),
                      Text(ConstantStrings().textChangePosterBackground,style: TextStyles.txtBold22,),
                      SizedBox(height: 14.h,),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: createPosterWatch.arrPosterImage.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 0
                        ),
                        itemBuilder: (BuildContext context, int index){
                          var image = createPosterWatch.arrPosterImage[index];
                          /// index == 0 and 1 is camera & gallery
                          return index == 0 || index == 1 ? InkWell(
                            onTap: (){
                              if(index == 0){
                              }else {
                              }
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.h),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.h),
                                  border: Border.all(color: clrCFCFCF)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(index == 0 ? icCamera :icGallery),
                                    SizedBox(height: 10.h,),
                                    Text(index == 0 ? ConstantStrings().textCamera : ConstantStrings().textGallery),
                                  ],
                                ),
                              ),
                            ),
                          ) : Stack(
                            children: [
                              InkWell(
                                onTap: (){
                                  createPosterWatch.setSelectedPosterImage(index);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.h),
                                  child: Image.asset(image),
                                ),
                              ),
                              createPosterWatch.selectedImage == index ? Positioned(
                                  right: 0,
                                  top:0,
                                  child: Image.asset(icSelectRight,height: 25.h,width: 25.h,)): Offstage()
                            ],
                          );
                        },
                      ),
                    ),
                      CommonButton(title: ConstantStrings().textSaveChanges, onTap: (){

                      }, height: 44.h, width: double.infinity,textStyle: TextStyles.txtMedium17.copyWith(color: clrWhite),)
                    ],
                  ),
                ),
              );
            }
          );
        }
    );
  }

  Widget posterTextBackgroundButton(CreatePosterController createPosterWatch) {
    return Padding(
      padding: EdgeInsets.only(top: 37.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          /// when isShowChangePosterBackground == false then show info widget then again click open bottomSheet
          !createPosterWatch.isShowChangePosterText ?
          InfoPopupWidget(
            dismissTriggerBehavior:
            PopupDismissTriggerBehavior.onTapContent,
            arrowTheme: InfoPopupArrowTheme(
              color: clrRed,
              arrowDirection: ArrowDirection.down,
            ),
            infoPopupDismissed: (){
              createPosterWatch.setShowChangePosterText(true);
            },
            customContent: Container(
              width: 129.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.h),
                color: clrRed,
              ),
              child: Padding(
                padding: EdgeInsets.all(11.h),
                child: Column(
                  children: [
                    Text(ConstantStrings().textClickHereToChangePosterText,style: TextStyles.txtRegular11.copyWith(color: clrWhite),),
                    SizedBox(height: 14.h,),
                    Align(alignment: Alignment.centerRight,child: Text(ConstantStrings().textNEXT,style: TextStyles.txtBold14.copyWith(color: clrWhite)))
                  ],
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 48.h,
                  width: 48.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: clrCFCFCF)
                  ),
                  alignment: Alignment.center,
                  child: Text("Aa",style: TextStyles.txtRegular20.copyWith(color: clrBlack),),
                ),
                SizedBox(height: 8.h,),
                Text(ConstantStrings().textChangePosterText2Line,style: TextStyles.txtMedium14,textAlign: TextAlign.center,)
              ],
            ),
          ):
          InkWell(
            onTap: (){
              changePosterTextBottomSheet(createPosterWatch);
            },
            child: Column(
              children: [
                Container(
                  height: 48.h,
                  width: 48.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: clrCFCFCF)
                  ),
                  alignment: Alignment.center,
                  child: Text("Aa",style: TextStyles.txtRegular20.copyWith(color: clrBlack),),
                ),
                SizedBox(height: 8.h,),
                Text(ConstantStrings().textChangePosterText2Line,style: TextStyles.txtMedium14,textAlign: TextAlign.center,)
              ],
            ),
          ),

          /// when isShowChangePosterBackground == false then show info widget then again click open bottomSheet
          !createPosterWatch.isShowChangePosterBackground ? InfoPopupWidget(
            arrowTheme: InfoPopupArrowTheme(
              color: clrRed,
              arrowDirection: ArrowDirection.down,
            ),
            dismissTriggerBehavior:
            PopupDismissTriggerBehavior.onTapContent,
            infoPopupDismissed: (){
              createPosterWatch.setShowChangePosterBackground(true);
            },
            customContent: Container(
              width: 129.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.h),
                color: clrRed,
              ),
              child: Padding(
                padding: EdgeInsets.all(11.h),
                child: Column(
                  children: [
                    Text(ConstantStrings().textClickHereToChangePosterBackground,style: TextStyles.txtRegular11.copyWith(color: clrWhite),),
                    SizedBox(height: 14.h,),
                    Align(alignment: Alignment.centerRight,child: Text(ConstantStrings().textOKAY,style: TextStyles.txtBold14.copyWith(color: clrWhite)))
                  ],
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 48.h,
                  width: 48.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: clrCFCFCF)
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(icGallery,color: clrBlack,height: 20.h,width: 20.h,)
                ),
                SizedBox(height: 8.h,),
                Text(ConstantStrings().textChangePosterBackground2Line,style: TextStyles.txtMedium14,textAlign: TextAlign.center,)
              ],
            ),
          ):
          InkWell(
            onTap: (){
              changePosterBackgroundBottomSheet();
            },
            child: Column(
              children: [
                Container(
                  height: 48.h,
                  width: 48.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: clrCFCFCF)
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(icGallery,color: clrBlack,height: 20.h,width: 20.h,)
                ),
                SizedBox(height: 8.h,),
                Text(ConstantStrings().textChangePosterBackground2Line,style: TextStyles.txtMedium14,textAlign: TextAlign.center,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
