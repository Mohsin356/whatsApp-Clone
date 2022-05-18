import 'package:get/get.dart';
import 'package:whatsappclone/models/conversationModel.dart';
 class ConversationScreenController extends GetxController{
   var conversationList=<ConversationModel>[].obs;
   @override
   void onInit() {
     // TODO: implement onInit
     super.onInit();
     fetchConversations();
   }
   void fetchConversations(){
     var response= <ConversationModel>[
       ConversationModel("Hi", "sender"),
       ConversationModel("Hello", "receiver"),
       ConversationModel("How are you?", "sender"),
       ConversationModel("Fine", "receiver"),
       ConversationModel("What about you?", "receiver"),
       ConversationModel("Fine too", "sender"),
       ConversationModel("Nice to meet you", "receiver"),
       ConversationModel("Hi", "sender"),
       ConversationModel("Hello", "receiver"),
       ConversationModel("How are you?","sender"),
       ConversationModel("Fine", "receiver"),
       ConversationModel("What about you?", "receiver"),
       ConversationModel("Fine too", "sender"),
       ConversationModel("Nice to meet you too. Will text you soon. Busy for this moment", "receiver"),
       ConversationModel("Nice to meet you", "receiver"),
       ConversationModel("Nice to meet you too", "sender"),
     ];
     conversationList.value=response;
   }
 }