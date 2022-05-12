import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/utils/txtHeadings.dart';
import 'package:whatsappclone/utils/texts.dart';
import 'package:whatsappclone/views/widgets/buttonWidget.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class SmsVerification extends StatelessWidget {
  SmsVerification({Key? key}) : super(key: key);
  var phNo= TextEditingController();
  var countryCode = TextEditingController();
  TextEditingController _pinCodeController=TextEditingController();
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
                  child:  Text(Headings.verifyPhoneHeading,style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,color:UiColors.headingClr),),
                ),
                Column(
                  children: [
                    const Text(Texts.verifyPhoneTxt,style:TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: <Widget>[
                          const Text("Enter your 6 digit code"),
                          PinCodeTextField(
                            controller: _pinCodeController,
                            maxLength: 4,
                            hideCharacter: true,
                            ),

                        ],
                      ),
                    )
                  ],
                ),
                CommonButton(buttonText: "Next", func: (){}, buttonClr: UiColors.btnClr),

              ],
            ),
          ),
        ));
  }
}
