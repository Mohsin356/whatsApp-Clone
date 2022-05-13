import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        required this.title,
        this.inputType,
        required this.controller,
        this.validator,
        this.txtColor,
        this.cursorClr,
        this.underlineClr,

      })
      : super(key: key);
  final String title;
  final TextInputType? inputType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Color? txtColor;
  final Color? cursorClr;
  final Color? underlineClr;


  @override
  Widget build(BuildContext context) {
    return  TextField(
    controller: controller,
    decoration:  InputDecoration(hintText: title,
    focusedBorder:  UnderlineInputBorder(
    borderSide: BorderSide(color:underlineClr!)
    ),),
    cursorColor: cursorClr,
    );
  }
}