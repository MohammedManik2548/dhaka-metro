import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget headerCenterAlign(String s, int i) {


  var value=120.0;
  double width = 0.0;

  if(value*8<Get.size.width){
    width = Get.size.width/8;
  }else {
    width = value;
  }

  return
    Container(
      alignment: Alignment.center,
      width: width,
      constraints: const BoxConstraints(minHeight: 40),
      padding: const EdgeInsets.all(5),

      color: const Color(0xff006A55),

      child: Text(
        s,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 13,color: Colors.white, overflow: TextOverflow.ellipsis),

      ),
    );
}
Widget headerCenterAlignWhite(String s, int i) {


  var value=120.0;
  double width = 0.0;

  if(value*8<Get.size.width){
    width = Get.size.width/8;
  }else {
    width = value;
  }

  return
    Container(
      alignment: Alignment.center,
      width: width,
      constraints: const BoxConstraints(minHeight: 40),
      padding: const EdgeInsets.all(5),

      color: s=='০'?Colors.grey:Colors.white,

      child: Text(
        s,
        textAlign: TextAlign.center,
        style:  const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
        ),

      ),
    );
}