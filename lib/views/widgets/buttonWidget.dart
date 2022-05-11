import 'package:flutter/material.dart';
class CommonButton extends StatelessWidget {
  const CommonButton({Key? key,required this.buttonText,
    required this.func,this.textSize,required this.buttonClr}) : super(key: key);
  final String buttonText;
  final VoidCallback func;
  final double? textSize;
  final Color buttonClr;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: func,
      child:  Text(buttonText, style: TextStyle(fontSize: textSize,),),
      style: ElevatedButton.styleFrom(
          primary: buttonClr),
    );
  }
}