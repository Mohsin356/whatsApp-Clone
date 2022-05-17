import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/views/screens/homeScreen.dart';
import 'package:whatsappclone/views/widgets/personalInfoFields.dart';
import 'package:whatsappclone/views/widgets/buttonWidget.dart';
import 'package:whatsappclone/utils/texts.dart';
import 'package:get/get.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child:  Text("Personal Info",style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,color:UiColors.headingClr),),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  Texts.personalInfoDetail,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                PersonalInfoFields(),
                const SizedBox(height: 10,),
                CommonButton(buttonText: "Next", func: (){
                  Get.to(HomeScreen());
                }, buttonClr: UiColors.btnClr),
              ],
            ),
          ),
    ));
  }


}
