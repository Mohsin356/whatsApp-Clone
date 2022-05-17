import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/models/chatsScreenModel.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: ChatScreenList.length,
          itemBuilder: (context,i)=>  Column(
            children: [
              const Divider(
                height: 12,
              ),
              ListTile(
                onTap: (){},
                leading: CachedNetworkImage(
                  imageUrl: ChatScreenList[i].urlImg,
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
                      ChatScreenList[i].name!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${ChatScreenList[i].time!} ${ChatScreenList[i].timeZone}",
                      style: const TextStyle(color: UiColors.timeTxtClr,fontSize: 14),
                    )
                  ],
                ),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    ChatScreenList[i].message!,
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
