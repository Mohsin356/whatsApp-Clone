import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/controllers/callLogController.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
class CallScreen extends StatelessWidget {
  CallScreen({Key? key}) : super(key: key);
  final callsLog= Get.put(CallLogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: callsLog.callLogList.length,
          itemBuilder: (context,index)=>Column(
            children: [
              const Divider(
                height: 12.0,
              ),
              ListTile(
                leading: CachedNetworkImage(
                  imageUrl: callsLog.callLogList[index].imgUrl!,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                  placeholder: (context, url) => const CircularProgressIndicator(
                    color: UiColors.circularIndicatorClr,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                title: Text(
                  callsLog.callLogList[index].name,
                  style:  const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.call_received, color: callsLog.callLogList[index].callType,),
                        const SizedBox(width: 10.0,),
                        Text(
                          callsLog.callLogList[index].time,
                          style: const  TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      ],
                    )
                ),
                trailing: const Icon(Icons.call, color: UiColors.iconClrTheme),
              ),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_call),
        backgroundColor: UiColors.iconBackgroundClr,
        onPressed: (){},
      ),
    );
  }
}

