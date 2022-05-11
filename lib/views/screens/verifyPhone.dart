import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/utils/txtHeadings.dart';
import 'package:whatsappclone/utils/texts.dart';
import 'package:whatsappclone/views/widgets/textField.dart';
class VerifyPhone extends StatelessWidget {
  VerifyPhone({Key? key}) : super(key: key);
  var phNo= TextEditingController();
  var countryCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(25),
                child: Text(Headings.verifyPhoneHeading,style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 25,color:UiColors.headingClr),),
              ),
             Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children:[
                  const Text(Texts.verifyPhoneTxt,style:TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                  TextField(controller: countryCode,),

                  CustomTextField(title: "Enter Phone Number", controller: phNo, visible:false,
                    txtColor:UiColors.txtClr,cursorClr: UiColors.cursorColor,lblClr: UiColors.labelClr,),
                ],),),
              



              // const SizedBox(height: 150,),
            ],
          ),
        ));
  }
}
