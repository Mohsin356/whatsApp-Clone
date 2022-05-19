import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/views/screens/agreeTerms.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:whatsappclone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
      FocusManager.instance.primaryFocus?.unfocus();
    },child:GetMaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      home: EasySplashScreen(
        logo: Image.asset('assets/logo.png'),
          title:  const Text(
            'WhatsApp',
            style: TextStyle(
                color: UiColors.txtClrWhite,
                fontSize: 25,
                fontFamily: 'assets/fonts/overpass_regular.otf'),
          ),
          backgroundColor:  UiColors.splashBackgroundClr,
          showLoader: true,
          loadingText: const Text("Loading..."),
          navigator: AgreeTerms(),
          durationInSeconds: 5,
      ),
    ),

    );
  }
}
