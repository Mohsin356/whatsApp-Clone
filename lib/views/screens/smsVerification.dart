import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/utils/texts.dart';
import 'package:whatsappclone/views/screens/personalInfo.dart';
import 'package:whatsappclone/views/widgets/buttonWidget.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';


class SmsVerification extends StatelessWidget {
  SmsVerification({Key? key}) : super(key: key);
  var phNo= TextEditingController();

  var countryCode = TextEditingController();

  final TextEditingController textEditingController=TextEditingController();
  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

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
                  child:  Text("Verify Your Phone Number",style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,color:UiColors.headingClr),),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(Texts.verifyPhoneTxt,style:TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                const SizedBox(
                  height: 15,
                ),
                const Text("Enter your 6 digit code",style:TextStyle(fontSize: 15),),
                const SizedBox(
                  height: 15,
                ),
                OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 30,
                  obscureText: true,
                  style: const TextStyle(
                      fontSize: 20
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                    onChanged: (String? pin) {
                      if (pin?.length == 6) {
                        // print(pin);
                      }
                    }
                  // onCompleted: (pin)
                  // {
                  //   print("Completed:" + pin);
                  // },
                ),
                const SizedBox(height: 10,),
                CommonButton(buttonText: "Next", func: (){
                  Get.to(PersonalInfo());
                }, buttonClr: UiColors.btnClr),

              ],
            ),
          ),
        ));
  }
}
