import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
class MyTextSelect extends StatelessWidget {
  TextEditingController editingController;
  bool enableOrDisable;
  String hints;
  String errorMessage;
  Icon icon;




  MyTextSelect({
    required this.editingController,
    required this.enableOrDisable,
    required this.hints,
    required this.errorMessage,
    required this.icon,

  });

  @override
  Widget build(BuildContext context) {

    return  Container(
      width: Get.size.width,
      // alignment: Alignment.center,
      height: 70,
      // color: Colors.red,
      margin: EdgeInsets.only(left: 10, right: 10 ),


        child: IgnorePointer(
          ignoring: enableOrDisable,
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              // backgroundColor: Colors.yellow
            ),
            child: DropdownButtonFormField<String>(


              decoration: InputDecoration(
                errorStyle: TextStyle(
                  fontSize: 11.0,
                  color: Colors.red,

                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                fillColor: AppConstant.scaffoldColor(),
                filled: true,
                hintText: hints,
                labelStyle: TextStyle(fontSize: 14 ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppConstant.mySecondaryColor(), width: 1.0 ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                border: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                prefixIcon: icon,
                contentPadding: EdgeInsets.only(top: 0, left: 5),
                // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),

              ),
              items: ['Samir','Gias uddin']
                  .map((label) => DropdownMenuItem(
                child: Text(label.toString(),style: TextStyle(fontSize: 14),),
                value: label,
              ))
                  .toList(),
              hint: Text(hints, style: TextStyle(fontSize: 14,),),
              onChanged: (value) {

                print(value);
              },
              validator: (v){
                if (v==null)
                  return errorMessage;

                return null;
              },


            ),

          ),
        ),



    );
  }
}
