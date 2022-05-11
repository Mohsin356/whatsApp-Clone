import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        required this.title,
        this.inputType,
        required this.controller,required this.visible,
        this.validator,
        this.txtColor,
        this.cursorClr,
        this.lblClr
      })
      : super(key: key);
  final String title;
  final TextInputType? inputType;
  final TextEditingController controller;
  final bool visible;
  final String? Function(String?)? validator;
  final Color? txtColor;
  final Color? cursorClr;
  final Color? lblClr;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: controller,
                keyboardType: inputType,
                obscureText: visible,
                validator: validator,
                style:  TextStyle(color: txtColor),
                cursorColor: cursorClr,
                decoration: InputDecoration(
                  labelText: title,
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.grey,),

                  ),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color:Color(0xff075E54),)
                  ),
                  labelStyle:  TextStyle(color: lblClr,
                    fontSize: 18,),
                ),
              )),
        ],
      ),
    );
  }
}