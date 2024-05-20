
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/utils/api.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangePassController extends GetxController{



  var changePassFormKey=GlobalKey<FormState>();
  var scrollController=ScrollController();


  var tEControllerCurrentPass=TextEditingController();
  var tEControllerNewPass=TextEditingController();
  var tEControllerConfirmPass=TextEditingController();

  var isPasswordShow=false.obs;
  var isCurrentPasswordShow=false.obs;
  var isNewPasswordShow=false.obs;
  var isConfirmPasswordShow=false.obs;

  // user_id:2147
  // currentPass:12345678
  // newPassword:12345678
  // confirmPassword:12345678


  void changePassword()async {
    SharedPreferences p = await SharedPreferences.getInstance();
    var access=p.getString('access');
    var refresh=p.getString('refresh');
    var currentPass = p.getString('client_password');
    Dio dio=Dio();
    var current=tEControllerCurrentPass.text;
    var newPass=tEControllerNewPass.text;
    var confirmPass=tEControllerConfirmPass.text;
    try{
      await AppConstant.checkInternetConnection().then((value) async{
        if(value==true){
          print('Internet Connected: $runtimeType');
          if(currentPass != current){
            AppConstant.showMySnackbar('Ops!', "Current password not matched");
          }else if(newPass==confirmPass){
            if(confirmPass.length>=4){
              EasyLoading.show(status: 'Please wait..');
              var response=await dio.post(Api.changePassword, data: json.encode({
                // 'user_id':'2147',
                'currentPassword':tEControllerCurrentPass.text,
                'newPassword':newPass,
                'confirmPassword':confirmPass
              }),options: Options(headers: {
                "Authorization":"Bearer $access"
              }));
              if(response.statusCode==200){
                EasyLoading.dismiss();
                print(response.data);
                Get.back();
                AppConstant.showMySnackbar('Success!', 'Password changed successfully');
              }else{
                AppConstant.showMySnackbar('Failed!', 'Failed to change password!');
              }

            }else{
              AppConstant.showMySnackbar('Failed!', 'Password at least 6 character');
            }
          }else{
            AppConstant.showMySnackbar('Ops!', "New & Confirm password doesn't matched");
          }
        }else{
          AppConstant.internetConnectionAlertDialog();
          print('No Internet Connection');
        }
      });
    }catch(e, l){
      AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
      print('$runtimeType:->Error  $e');
      print('$runtimeType:->Line  $l');
    }
  }
}