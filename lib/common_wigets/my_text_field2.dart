import 'package:flutter/material.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../screens/homePage/fragments/updateProfilePage/update_profile_controller.dart';
class MyTextField2 extends StatelessWidget {
  TextEditingController editingController;
  bool enableOrDisable;
  String hints;
  String errorMessage;
  Icon icon;
  TextInputType inputType;
  bool isRequired;
  double h;

  MyTextField2({
    required this.editingController,
    required this.enableOrDisable,
    required this.hints,
    required this.errorMessage,
    required this.icon,
    required this.inputType,
    required this.isRequired,
    required this.h
  });

  UpdateProfileController controller=Get.put(UpdateProfileController());

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      // color: Colors.red,
      height: h,
      // margin: EdgeInsets.only(left: 10, right: 10 ),
      child: TextFormField(

        keyboardType: TextInputType.multiline,
        minLines: 1,//Normal textInputField will be displayed
        maxLines: 3,

        enabled: enableOrDisable,
        // keyboardType: inputType,
        style: TextStyle(fontSize: 14,color: enableOrDisable==false?Colors.grey:AppConstant.mySecondaryColor()),
        cursorColor: AppConstant.mySecondaryColor(),
        controller: editingController,

        decoration: InputDecoration(

          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),

          contentPadding: EdgeInsets.only(top: 0, left: 5),
          errorStyle: TextStyle(
            fontSize: 11.0,
            color: Colors.red,

          ),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          //
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          fillColor: Colors.white,
          filled: true,
          hintText: hints,
          labelStyle: TextStyle(fontSize: 14 ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),


          border: OutlineInputBorder(),
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          // prefixIcon: icon,

          // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),

        ),
        onChanged: (v){
          // controller.percentageCalculation();
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