import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/controllers/verifyPhoneController.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/utils/texts.dart';
import 'package:whatsappclone/views/screens/smsVerification.dart';
import 'package:whatsappclone/views/widgets/buttonWidget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:whatsappclone/views/widgets/textField.dart';

class VerifyPhone extends StatelessWidget {
  VerifyPhone({Key? key}) : super(key: key);
  var phNo = TextEditingController();
  var codeChangeController = Get.put(VerifyPhoneController());

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
                  child: Text("Verify Your Phone Number",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 25, color: UiColors.headingClr),),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(Texts.verifyPhoneTxt, style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,

                ),
                Card(
                  child: CountryCodePicker(
                    padding: const EdgeInsets.all(0),
                    initialSelection: "Pk",
                    alignLeft: true,
                    showDropDownButton: true,
                    onChanged: (value) {
                      codeChangeController.initialCode.value = value.dialCode!;
                      // print(codeChangeController.initialCode.value);
                      //  codeChangeController.initialCode.;
                    },
                  ),
                ),
                Row(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                  width: 1.50,
                                  color: UiColors.textUnderLine,
                                ))),
                        width: 80,
                        height: 42,
                        alignment: Alignment.center,
                        child: Obx(() {
                          return Text(codeChangeController.initialCode.value);
                        }),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: CustomTextField(
                            controller: phNo,
                            title: "Phone Number",
                            inputType: TextInputType.phone,
                            cursorClr: UiColors.cursorColor,
                            underlineClr: UiColors.textUnderLine,
                            ),
                        ),
                      ),
                    ]
                ),
                const SizedBox(height: 10,),
                CommonButton(buttonText: "Next", func: () {
                    Get.to(SmsVerification());
                }, buttonClr: UiColors.btnClr),

              ],
            ),
          ),
        ));
  }
}
