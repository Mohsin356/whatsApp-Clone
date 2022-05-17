import 'package:flutter/material.dart';
import 'package:whatsappclone/utils/colors.dart';
import 'package:whatsappclone/models/callLog.dart';
import 'package:cached_network_image/cached_network_image.dart';
class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_call),
        backgroundColor: UiColors.iconBackgroundClr,
        onPressed: (){},
      ),
    );
  }
}

