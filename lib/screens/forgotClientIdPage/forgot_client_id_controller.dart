import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/utils/api.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'forget_client_id_otp_screen.dart';

class ForgotPassController extends GetxController{

  var loginFormKey=GlobalKey<FormState>();
  var scrollController=ScrollController();


  var emailController=TextEditingController();
  var mobileNoController=TextEditingController();
  var confirmForgetClientOtpTextField=TextEditingController();


  @override
  void onInit() {
    //emailController.text='AIMS-104';
    super.onInit();
  }

  void forgotClientId()async {
    var text=emailController.text;


    Dio dio = Dio();
    String url = Api.forgotPassword;
    print('$runtimeType HIT_URL1:-$url');

    try{
      await AppConstant.checkInternetConnection().then((value)async {
        if(value==true){

          var map={
            "client_id":'AIMS-$text'
          };
          print('$runtimeType HIT_URL Data:-${jsonEncode(map)}');
          EasyLoading.show(status: 'Loading');
          var response = await dio.post(url, data:jsonEncode(map));
          print('$runtimeType HIT_URL:-$url');
          print('Internet Connected: $runtimeType');
          print('$runtimeType:->Status Code  ${response.statusCode}');
          if (response.statusCode == 200) {

            print('HelloDATA: ${response.data}');
            Get.back();
            AppConstant.showMySnackbar('Success!', response.data['message']);
          } else {
            AppConstant.showMySnackbar('Failed!', 'Failed to Load Investment summary data');
          }
          EasyLoading.dismiss();





        }else{
          AppConstant.internetConnectionAlertDialog();
          print('No Internet Connection');
        }
      });
    }catch(e, l){
      Get.toNamed(ForgetClientIdOTP.routeName);
      EasyLoading.dismiss();
      AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
      print('$runtimeType:->Error  $e');
      print('$runtimeType:->Line  $l');
      print('${StackTrace.current}:->Line  $l');
    }
  }

  // Future<void> submitClientForgetOTP() async{
  //   if(confirmForgetClientOtpTextField.text.isEmpty){
  //     Fluttertoast.showToast(msg: 'Please Enter Your OTP');
  //   }else{
  //     Dio dio = Dio();
  //     String url = Api.basicInfoSubmitBOAPI;
  //     Map<String, dynamic> mapData={
  //       // 'type':accountTypeBasicInfoEditingController.text,
  //       // 'dob':dobBasicInfoEditingController.text,
  //       // 'nid':nidBasicInfoEditingController.text,
  //     };
  //
  //
  //     try {
  //
  //
  //       await AppConstant.checkInternetConnection().then((value) async{
  //         if (value == true) {
  //
  //           await MyForm.myFromMaker(mapData).then((v) async{
  //
  //             // horizontalProgressIsActive.value=true;
  //             var response = await dio.post(url, data:v);
  //
  //             print(response.statusCode);
  //             if (response.statusCode == 200) {
  //               // horizontalProgressIsActive.value=false;
  //               // dataSubmitSuccess.value=true;
  //             } else {
  //               // horizontalProgressIsActive.value=false;
  //               AppConstant.showMySnackbar('Failed!', 'Failed to Load Investment summary data');
  //             }
  //
  //           });
  //
  //
  //
  //         } else {
  //           // horizontalProgressIsActive.value=false;
  //           AppConstant.internetConnectionAlertDialog();
  //           print('No Internet Connection');
  //         }
  //       });
  //     } on DioError catch (e, l) {
  //       // horizontalProgressIsActive.value=false;
  //       // dataSubmitSuccess.value=false;
  //       AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
  //     }
  //   }
  //
  //
  //
  // }

  String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return '';
  }

}