import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/views/widgets/textField.dart';

class PersonalInfoFields extends StatelessWidget {
   PersonalInfoFields({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
              color: UiColors.textIconColor,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: const Icon(Icons.camera_alt),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: CustomTextField(
            title: "Enter Your Name",
            controller: nameController,
            cursorClr: UiColors.cursorColor,
            underlineClr: UiColors.textUnderLine,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        const SizedBox(
          width: 35,
          height: 35,
          child: Icon(Icons.insert_emoticon),
        )
      ],
    );
  }
}
