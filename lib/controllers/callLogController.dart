import 'package:get/get.dart';
import 'package:whatsappclone/models/callLogModel.dart';
import 'package:whatsappclone/utils/colors.dart';
class CallLogController extends GetxController{
  var callLogList = <CallLog>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchCallLog();
  }

  void fetchCallLog(){
    var response=<CallLog>[
      CallLog(
          name: "Liam",
          time: "September 12, 15:30 AM",
          imgUrl:
          "https://images.unsplash.com/photo-1559386484-97dfc0e15539?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym95c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          callType: UiColors.callRejectedClr),
      CallLog(
          name: "Noah",
          time: "September 12, 15:30 AM",
          imgUrl:
          "https://images.unsplash.com/photo-1547320935-59b5a4f2cd1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Ym95c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          callType: UiColors.callAcceptedClr),
      CallLog(
          name: "Oliver",
          time: "September 12, 15:30 AM",
          imgUrl:
          "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Ym95c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          callType: UiColors.callRejectedClr),
      CallLog(
          name: "William",
          time: "September 12, 15:30 AM",
          imgUrl:
          "https://images.unsplash.com/photo-1588376483402-acc965d4ac21?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fGJveXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          callType: UiColors.callRejectedClr),
      CallLog(
          name: "Elijah",
          time: "September 12, 15:30 AM",
          imgUrl:
          "https://images.unsplash.com/photo-1546512565-39d4dc75e556?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDZ8fGJveXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          callType: UiColors.callRejectedClr),
      CallLog(
          name: "James",
          time: "September 12, 15:30 AM",
          imgUrl:
          "https://images.unsplash.com/photo-1591852651348-20f2255cb64b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njh8fGJveXN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          callType: UiColors.callAcceptedClr),
    ];
    callLogList.value=response;
  }
}