import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/controllers/ConversationScreenController.dart';
import 'package:whatsappclone/controllers/chatScreenController.dart';
import 'package:whatsappclone/models/conversationModel.dart';
import 'package:whatsappclone/utils/colors.dart';

class ConversationScreen extends StatelessWidget {
   ConversationScreen({Key? key}) : super(key: key);
   final conversationController =Get.put(ConversationScreenController());
   final chatController= Get.find<ChatScreenController>();
   final TextEditingController message = TextEditingController();
   final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: UiColors.appBarClr,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton (icon: const Icon(Icons.arrow_back,color: UiColors.iconClr,),
                  onPressed: () {
                    Navigator.pop(context);},),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  const[
                      Text("Whatsapp user",style: TextStyle(color: UiColors.txtClrWhite,fontSize: 16 ,fontWeight: FontWeight.w600),),
                       Text("Online",style: TextStyle(color: UiColors.txtClrWhite, fontSize: 13),),
                    ],
                  ),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.video_call,color: UiColors.iconClr,)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.call,color: UiColors.iconClr,)),
                PopupMenuButton(
                  child: const Icon(
                    Icons.more_vert,color: UiColors.iconClr,
                  ),
                  itemBuilder: (BuildContext context){
                    return
                      [
                        const PopupMenuItem(
                          child: Text("View Contacts"),
                        ),
                        const PopupMenuItem(
                          child: Text("Media, links and docs"),
                        ),
                        const PopupMenuItem(
                          child: Text("Search"),
                        ),
                        const PopupMenuItem(
                          child: Text("Mute notifications"),
                        ),
                        const PopupMenuItem(
                          child: Text("Wallpaper"),
                        ),
                      ];
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children:  [
          Obx((){
            return Container(
                decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/images/backgroundimg.png"),
            fit: BoxFit.cover,
            ),
                ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: ListView.builder(itemCount:conversationController.conversationList.length ,
                  shrinkWrap: true,
                  controller: scrollController,
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  itemBuilder: (context,index){
                    return Container(
                        padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
                        child: Align(
                          alignment: (conversationController.conversationList[index].messageType=="receiver"?Alignment.topLeft:Alignment.topRight),
                          child: Container(
                            constraints: const BoxConstraints(
                              minWidth: 50,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:(conversationController.conversationList[index].messageType=="receiver"?UiColors.receiveMsgBubbleClr:UiColors.sendMsgBubbleClr),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Text(conversationController.conversationList[index].messageBody!,style: const TextStyle(fontSize: 15,color: Colors.white,)),
                          ),
                        )
                    );
                  },
                ),
              ),
            );
          }),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(70),
                  color: UiColors.backgroundClr,
                ),
                padding: const EdgeInsets.only(left: 10, bottom: 10,top: 10),
                height: 55,
                width: double.infinity,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration:  BoxDecoration(
                          color: UiColors.iconBackgroundClr,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.add,color: UiColors.iconClr,size: 20,),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                        child:TextField(
                          controller: message,
                          cursorColor: UiColors.cursorColor,
                          decoration: const InputDecoration(
                            hintText: "Write message here....",
                            border: InputBorder.none,
                          ),
                        )),
                    const SizedBox(width: 15,),
                       FloatingActionButton(onPressed: (){
                         conversationController.conversationList.add(ConversationModel(message.text.trim(), "sender"),);
                         message.clear();
                         scrollController.jumpTo(scrollController.position.maxScrollExtent+60);
                       },
                         child: const Icon(Icons.send,size: 18,),
                         backgroundColor: UiColors.iconBackgroundClr,
                         elevation: 0,),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
