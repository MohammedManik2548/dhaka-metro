import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget  item(String item) {
  var totalItemSize=160.0;
  double width = 0.0;

  if(totalItemSize*8<Get.size.width){
    width = Get.size.width/8;
  }else {
    width = totalItemSize;
  }

  return Container(
    alignment: Alignment.centerRight,
    width: item=='Total (Both Inhouse and Agency)'?width=220:width,
    height: 40,
    constraints: const BoxConstraints(minHeight: 30),
    color: Colors.white,
    padding: const EdgeInsets.only(right: 10),
    child: Text(
      item ?? "",
      textAlign: TextAlign.right,
      style: const TextStyle(fontSize: 12),
    ),
  );
}
Widget  headItem(String item) {
  var totalItemSize=160.0;
  double width = 0.0;

  if(totalItemSize*8<Get.size.width){
    width = Get.size.width/8;
  }else {
    width = totalItemSize;
  }

  return Container(
    alignment: Alignment.centerRight,
    width: item=='Total (Both Inhouse and Agency)'?width=220:width,
    height: 40,
    constraints: const BoxConstraints(minHeight: 30),
    color: const Color(0xff555555),
    padding: const EdgeInsets.only(right: 10),
    child: Text(
      item ?? "",
      textAlign: TextAlign.right,
      style: const TextStyle(fontSize: 12),
    ),
  );
}