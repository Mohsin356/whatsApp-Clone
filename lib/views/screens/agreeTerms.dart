import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/utils/assets.dart';
import 'package:whatsappclone/views/screens/verifyPhone.dart';
import 'package:whatsappclone/views/widgets/buttonWidget.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/utils/texts.dart';

class AgreeTerms extends StatelessWidget {
  AgreeTerms({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Padding(
                    padding:  EdgeInsets.only(top: 20),
                    child: Text("WhatsApp Clone",style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 28,color:UiColors.headingClr),),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
               SizedBox(
                width: 250,height: 300,
                child: Image.asset(Images.brandImg,),
              ),
              const SizedBox(height: 30,),
              Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: const Text(Texts.policyStatement,style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,)),
              const SizedBox(height: 10,),
              CommonButton(buttonText: "AGREE AND CONTINUE", func: (){
                Get.to(() => VerifyPhone());
              }, buttonClr: UiColors.btnClr)

            ],
          ),

        ),
      ),
    );
  }
}