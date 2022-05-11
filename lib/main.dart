import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/views/screens/agreeTerms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      home: AgreeTerms(),
    );
  }
}
