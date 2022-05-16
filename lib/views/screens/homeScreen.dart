import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("WhatsApp Clone",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
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
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
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
            ],
          ),
        ),
        body:const SafeArea(
          child:TabBarView(
            children: [
              Text("Camera"),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),

      ),

    );
  }
}
