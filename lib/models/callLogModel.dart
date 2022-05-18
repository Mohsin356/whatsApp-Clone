import 'package:flutter/material.dart';

class CallLog{
  final String name;
  final String time;
  final String? imgUrl;
  final Color callType;

  CallLog({required this.name, required this.time, this.imgUrl, required this.callType});
}
