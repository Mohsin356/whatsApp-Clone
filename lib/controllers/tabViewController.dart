import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TabViewController extends GetxController with SingleGetTickerProviderMixin{
  final List<Tab> myTabs = const <Tab>[
    Tab(icon: Icon(Icons.camera_alt),),
    Tab(
      text: "CHATS",
    ),
    Tab(
      text: "STATUS",
    ),
    Tab(
      text: "CALLS",
    )
  ];
  TabController? controller;
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length,initialIndex: 1);
  }

  @override
  void onClose() {
    controller!.dispose();
    super.onClose();
  }
}
