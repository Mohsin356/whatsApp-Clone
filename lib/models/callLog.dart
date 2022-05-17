import 'package:flutter/material.dart';

class CallLog{
  final String? name;
  final String? time;
  final String? imgUrl;
  final Color? callType;

  CallLog({this.name, this.time, this.imgUrl, this.callType});
}
List<CallLog> callLogData=[

];