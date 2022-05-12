import 'package:flutter/cupertino.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(Headings.mainScreenHeading,style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 28,color:UiColors.headingClr),),
                Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Image.asset(Images.brandImg,width: 300,height: 300,)),
                Text(Texts.policyStatement,style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,),
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CommonButton(buttonText: "AGREE AND CONTINUE", func: (){
                    Get.to(() => VerifyPhone());
                  }, buttonClr: UiColors.btnClr),
                ),

              ],
            )
             
            
          ),

        ),
      ),
    );
  }
}
