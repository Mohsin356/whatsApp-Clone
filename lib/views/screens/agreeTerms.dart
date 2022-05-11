import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/utils/assets.dart';
import 'package:whatsappclone/views/screens/verifyPhone.dart';
import 'package:whatsappclone/views/widgets/buttonWidget.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/utils/txtHeadings.dart';
import 'package:whatsappclone/utils/texts.dart';

class AgreeTerms extends StatelessWidget {
   AgreeTerms({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(25),
              child: Text(Headings.mainScreenHeading,style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 28,color:UiColors.headingClr),),
            ),
            const SizedBox(height: 100,),
            Padding(
              padding:const  EdgeInsets.all(20),
              child: Center(
                child: Image.asset(Images.brandImg),
              ),
            ),
            const SizedBox(height: 100,),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(Texts.policyStatement,style:TextStyle(fontSize: 15),textAlign: TextAlign.center,),),
                  const SizedBox(height: 10,),
                  CommonButton(buttonText: "AGREE AND CONTINUE", func: (){
                    Get.to(() => VerifyPhone());
                  }, buttonClr: UiColors.btnClr)
                ],
              ),
            ),
            // const SizedBox(height: 150,),
          ],
        ),
      ),
    );
  }
}
