import 'package:get/get.dart';
import 'package:whatsappclone/models/countryCodes.dart';

class TermsController extends GetxController{
  var codes= <CountryCode>[].obs;
  @override
  void onInit(){
    super.onInit();
    fetchCodes();
  }
  void fetchCodes() async{
    await Future.delayed(const Duration(seconds: 1));
    var response= <CountryCode>[
    CountryCode(
      name: "Afghanistan",
      code: "+93",
    ),
      CountryCode(
        name: "Afghanistan",
        code: "+93",
      ),
      CountryCode(
        name: "Armenia",
        code: "+374",
      ),
      CountryCode(
        name: "Pakistan",
        code: "+92",
      ),
      CountryCode(
        name: "India",
        code: "+91",
      ),
      CountryCode(
        name: "China",
        code: "+86",
      ),

  ];
    codes.value=response;

  }
}