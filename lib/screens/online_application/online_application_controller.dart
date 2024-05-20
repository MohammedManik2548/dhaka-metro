import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnlineApplicationController extends GetxController{

  var textFieldId=TextEditingController();
  var textFieldPassword=TextEditingController();
  var loginFormKey=GlobalKey<FormState>();
  var scrollController=ScrollController();
  var isPasswordShow=false.obs;
  var checkRemember=false.obs;

}