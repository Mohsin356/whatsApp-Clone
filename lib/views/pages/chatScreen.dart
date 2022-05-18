import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:whatsappclone/controllers/chatScreenController.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/views/screens/ConversationScreen.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({Key? key}) : super(key: key);
  final chatsController = Get.put(ChatScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatsController.chatScreenList.length,
          itemBuilder: (context,i)=>  Column(
            children: [
              const Divider(
                height: 12,
              ),
              ListTile(
                onTap: (){
                  Get.to(ConversationScreen());
                },
                leading: CachedNetworkImage(
                  imageUrl: chatsController.chatScreenList[i].urlImg,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                  placeholder: (context, url) => const Icon(Icons.person),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      chatsController.chatScreenList[i].name!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${chatsController.chatScreenList[i].time!} ${chatsController.chatScreenList[i].timeZone}",
                      style: const TextStyle(color: UiColors.timeTxtClr,fontSize: 14),
                    )
                  ],
                ),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    chatsController.chatScreenList[i].message!,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),

            ],
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat),
        backgroundColor: UiColors.iconBackgroundClr,
        onPressed: (){},
      ),
    );
  }
}
