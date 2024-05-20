import 'package:flutter/material.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyTextField extends StatelessWidget {
  TextEditingController editingController;
  bool enableOrDisable;
  String hints;
  String errorMessage;
  Icon icon;
  TextInputType inputType;
  bool isRequired;

  MyTextField({
    required this.editingController,
    required this.enableOrDisable,
    required this.hints,
    required this.errorMessage,
    required this.icon,
    required this.inputType,
    required this.isRequired
  });
  // SurrenderController _controller=Get.put(SurrenderController());

  @override
  Widget build(BuildContext context) {
    return  Container(
      // color: Colors.red,
      height: 70,
      margin: EdgeInsets.only(left: 10, right: 10 ),
      child: TextFormField(


        enabled: enableOrDisable,
        keyboardType: inputType,
        style: TextStyle(fontSize: 14,color: enableOrDisable==false?Colors.grey:AppConstant.mySecondaryColor()),
        cursorColor: AppConstant.mySecondaryColor(),
        controller: editingController,

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
        onChanged: (v){

          // _controller.amountCalculation(editingController.text);


        },
        validator: (v){
          if(isRequired==true){
            if (v!.isEmpty)
              return errorMessage;
          }else{
            return null;
          }


          return null;
        },
      ),
    );
  }
}
