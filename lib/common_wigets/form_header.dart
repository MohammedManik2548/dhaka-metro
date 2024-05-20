import 'package:flutter/material.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

class FormHeaderReg extends StatelessWidget {
  String title;


  FormHeaderReg({
    required this.title
});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Text('*',style: TextStyle(fontSize: 15,color: Colors.red),),
          Text(title, style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 12, fontWeight: FontWeight.bold),),
        ],
      ),
      height: 20,);
  }
}
class FormHeader extends StatelessWidget {
  String title;


  FormHeader({
    required this.title
});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.centerLeft,
      child: Text(title, style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 12, fontWeight: FontWeight.bold),),
      height: 20,);
  }
}
