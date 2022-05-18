import 'package:flutter/material.dart';
import 'package:whatsappclone/controllers/tabViewController.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/views/pages/chatScreen.dart';
import 'package:whatsappclone/views/pages/callScreen.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/views/pages/statusScreen.dart';

class HomeScreen extends StatelessWidget  {
    HomeScreen({Key? key}) : super(key: key);
  final myTabController =Get.put(TabViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("WhatsApp",style: TextStyle(fontSize: 25,),),
        backgroundColor: UiColors.appBarClr,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            color: UiColors.popUpClr,
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  child: Text("New broadcast"),
                ),
                const PopupMenuItem(
                  child: Text("Whatsapp Web"),
                ),
                const PopupMenuItem(
                  child: Text("Starred messages"),
                ),
                const PopupMenuItem(
                  child: Text("Settings"),
                ),
              ];
            },
          )
        ],
        bottom:  TabBar(
          controller: myTabController.controller,
          tabs: myTabController.myTabs,
          indicatorColor: UiColors.indicatorClr,
        ),
      ),
      body: SafeArea(
        child:TabBarView(
          controller: myTabController.controller,
          children: [
            const Text("Camera"),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),

    );
  }
  //
  // Widget myPopMenuChatScreen() {
  //   return PopupMenuButton(
  //       itemBuilder: (context) => const [
  //         PopupMenuItem(value: 1, child: Text('New group')),
  //         PopupMenuItem(value: 2, child: Text('New broadcast')),
  //         PopupMenuItem(value: 3, child: Text('WhatsApp Web')),
  //         PopupMenuItem(value: 4, child: Text('Starred messages')),
  //         PopupMenuItem(value: 5, child: Text('Settings')),
  //       ]);
  // }
  //
  // Widget myPopMenuStatusScreen() {
  //   return PopupMenuButton(
  //       itemBuilder: (context) => const [
  //         PopupMenuItem(value: 6, child: Text('Status privacy')),
  //         PopupMenuItem(value: 7, child: Text('Setting')),
  //       ]);
  // }
  // Widget myPopMenuCallScreen() {
  //   return PopupMenuButton(
  //       itemBuilder: (context) => const [
  //         PopupMenuItem(value: 6, child: Text('Clear call log')),
  //         PopupMenuItem(value: 7, child: Text('Settings')),
  //       ]);
  // }
  // // ignore: missing_return
  //  myPopUpMenu(int i) {
  //   switch (i) {
  //     case 0:
  //       return const SizedBox();
  //     case 1:
  //       return myPopMenuChatScreen();
  //     case 2:
  //       return myPopMenuStatusScreen();
  //     case 3:
  //       return myPopMenuCallScreen();
  //   }
  // }

}

