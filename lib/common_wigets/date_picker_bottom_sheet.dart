import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

import 'list_item_actions.dart';

//ignore: must_be_immutable
class DatePickerBottomSheet extends StatelessWidget {

  var dateNow=DateTime.now();
  var dateNow1=DateTime.now();
  TextEditingController editingController;
  String title;


    DatePickerBottomSheet({
    required this.editingController,
    required this.title
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:Get.size.width,
      height:40/100* Get.size.height,
      decoration: BoxDecoration(
        color: AppConstant.scaffoldColor(),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),

      child: Column(
        children: [
          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(left: 10, right: 10, top: 3,bottom: 3),
            height:5/100* Get.size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListItemActions(corner: 'dfd', align: 'ss', title: 'Cancel', size: 20/100*Get.size.width, position: 1, callback: (){
                  Get.back();
                }),

                Container(width: 40/100*Get.size.width,child: Center(child: Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),),
                ListItemActions(corner: 'dfd', align: 'ss', title: 'Confirm', size: 30/100*Get.size.width, position: 1, callback: (){
                  editingController.text='${dateNow1.day}-${dateNow1.month}-${dateNow1.year}';
                  Get.back();
                }),


              ],
            ),
          ),
          Divider(height: 1,),
          Container(

            // color: Colors.yellow,
            height:20/100* Get.size.height,
            child: CupertinoDatePicker(

              mode: CupertinoDatePickerMode.date,
              initialDateTime: dateNow,
              onDateTimeChanged: (DateTime newDateTime) {
                dateNow1=newDateTime;
              },
            ),
          )

        ],
      ),
    );
  }
}
