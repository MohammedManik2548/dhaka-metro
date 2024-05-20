import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

import 'my_text_select.dart';
import 'my_text_select2.dart';

class TitleDataWidget extends StatelessWidget {
  String title;
  Widget data;
  String titleAlignment;
  String dataAlignment;
  bool? required;


  TitleDataWidget({
    required this.title,
    required this.data,
    required this.titleAlignment,
    required this.dataAlignment,
    this.required=false,
});
  var te=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      child: FittedBox(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //title
              Container(
                alignment: Alignment.centerLeft,
                width: 36 / 100 * Get.size.width,
                padding: EdgeInsets.all(5),
                constraints: BoxConstraints(minHeight: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft:  Radius.circular(5),
                  ),
                  color: Color(0xffE6E4E4),
                ),
                child: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                      required==true?Text(
                        '*',
                        style: TextStyle(
                            fontSize: 15, color: Colors.red),
                      ):SizedBox(),
                    ],
                  ),
                ),
              ),

              //data
              Container(
                alignment: dataAlignment=='center'? Alignment.center:dataAlignment=='left'?Alignment.centerLeft:Alignment.centerRight,
                width: 70 / 100 * Get.size.width,
                margin: EdgeInsets.only(left: 10),
                constraints: BoxConstraints(minHeight: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight:  Radius.circular(5),
                  ),
                  color:Colors.white,
                ),
                  child: data
                // child: Text(
                //   data,
                //   textAlign: dataAlignment=='center'? TextAlign.center:dataAlignment=='left'?TextAlign.left:TextAlign.right,
                //   style: TextStyle(fontSize: 15),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
