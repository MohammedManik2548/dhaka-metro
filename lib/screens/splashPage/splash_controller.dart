import 'dart:ffi';

import 'package:get/get.dart';
import 'package:dhaka_metro/screens/homePage/home_page.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../new_investor/new_investor_account/new_investor_accout_open.dart';
import '../online_application/online_application.dart';

class SplashController extends GetxController{
  var userIsExits=false.obs;
  var splashScreenName=''.obs;

  @override
  void onInit() {
    _goToHomePage();
    // getSharedData();
    super.onInit();
  }


  void _goToHomePage()async {
    await Future.delayed(const Duration(seconds: 3));
    // splashScreenName.value='AIMS OF BANGLADESH LIMITED';
    // await Future.delayed(Duration(seconds: 1));
    // Get.offAll(()=>HomePage());
  }


}