import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/utils/txtHeadings.dart';
import 'package:whatsappclone/utils/texts.dart';
import 'package:whatsappclone/views/screens/smsVerification.dart';
import 'package:whatsappclone/views/widgets/buttonWidget.dart';
class VerifyPhone extends StatelessWidget {
  VerifyPhone({Key? key}) : super(key: key);
  var phNo= TextEditingController();
  var countryCode = TextEditingController();
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
                   DropdownButtonFormField<String>(
                     hint: const Text('Select Your Country'),
                     items: <String>['A', 'B', 'C', 'D'].map((String value) {
                       return DropdownMenuItem<String>(
                         value: value,
                         child:  Text(value),
                       );
                     }).toList(),
                     onChanged: (_) {},
                   ),
                   // ListTile(
                   //   onTap: (){},
                   //   title: Text("Select Country",),
                   //
                   // ),
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
                           child: const  Text("Country Code"),
                         ),
                         const SizedBox(
                           width: 8.0,
                         ),
                         Expanded(
                           child: SizedBox(
                             height: 40,
                             child: TextField(
                               controller: phNo,
                               decoration: const InputDecoration(hintText: "Phone Number"),
                             ),
                           ),
                         ),

                       ]
                   ),
                 ],
               ),
                CommonButton(buttonText: "Next", func: (){
                  Get.to(SmsVerification());
                }, buttonClr: UiColors.btnClr),

              ],
            ),
          ),
        ));
  }
}
