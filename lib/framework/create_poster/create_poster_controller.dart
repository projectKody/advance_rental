import 'package:flutter/cupertino.dart';
import 'package:web_demo/utils/theme_const.dart';

class CreatePosterController extends ChangeNotifier{

  List<String> arrPosterImage = ["camera","gallery",Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,Constant().icPoster2,];

  var arrTemplate = [
    {
      "offerText": "Festival Wish",
      "addressLine2": "We wish you a Merry Christmas and a Happy New Year",
    },
    {
      "offerText": "Festival Wish",
      "addressLine2": "We wish you a Happy Diwali and a Happy New Year",
    },
    {
      "offerText": "Festival Wish",
      "addressLine2": "We wish you a Happy Diwali",
    },
  ];

  String strOfferText = "New collection of mobile covers available at \$199";
  String strAddressLine2 = "Raju Mobile Shop | Contact: 9876543210 117D, Prem Colony, Near Gayatri Mandir, Ambala Cantt";

  bool isShowChangePosterBackground = false;
  bool isShowChangePosterText = false;

  setShowChangePosterBackground(bool status){
    isShowChangePosterBackground = status;
    notifyListeners();
  }

  setShowChangePosterText(bool status){
    isShowChangePosterText = status;
    notifyListeners();
  }

  int selectedImage = 3;

  setSelectedPosterImage(int index){
    selectedImage = index;
    notifyListeners();
  }

  updateOfferTextAddressLine(String offerText,String addressLine){
    strOfferText = offerText;
    strAddressLine2 = addressLine;
    notifyListeners();
  }

  clearProvider(){
    isShowChangePosterBackground = false;
    isShowChangePosterText = false;
    selectedImage = 3;
    strOfferText = "New collection of mobile covers available at \$199";
    strAddressLine2 = "Raju Mobile Shop | Contact: 9876543210 117D, Prem Colony, Near Gayatri Mandir, Ambala Cantt";
    notifyListeners();
  }



}