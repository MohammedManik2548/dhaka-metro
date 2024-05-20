import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ApplicationStatusController extends GetxController{
  var textFieldOtp=TextEditingController();

  var checkRemember=false.obs;
  var loginFormKey=GlobalKey<FormState>();
  var isPasswordShow=false.obs;
}