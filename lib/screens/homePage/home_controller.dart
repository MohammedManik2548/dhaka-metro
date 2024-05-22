
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/screens/homePage/fragments/profile/profile_screen.dart';
import 'package:dhaka_metro/screens/homePage/fragments/settings/changePassPage/change_pass_screen.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'fragments/updateProfilePage/update_profile_screen.dart';


class HomeController extends GetxController{

  var userType='0'.obs;

  var userName='Dhaka Metro'.obs;
  var userEmail='Version: 2.0.0'.obs;
  var screenPosition=0.obs;


  var screenHeader=[
    'ভাড়ার তালিকা',
    'Update Info',
    // 'Buy Units',
    // 'Surrender Units',
    //
    // 'Change Password',
    // 'Reports',
    // 'Portfolio Statement',//Report
    // 'Transaction History',//report
    //
    //
    // 'Confirmation of Unit Allocation',//report
    // 'Capital Gain / Loss',//report
    // // 'Nav History',//Report
    // 'Tax Certificate',//Report
    //
    //
    // 'Surrender Form',//Report
    // // 'Tutorial',
    //
    // // 'Profile',
    // // 'Settings',
    // // 'Change Password',//setting
    // // 'Update Profile',//setting
    // //
    // 'Create New SIP',
    // 'Logout',
    //"Dashboard"
  ];

  var screenList=[
    ProfileScreen(),
    UpdateProfileScreen(),
    // PurchaseScreen(),
    // SurrenderScreen(),
    // ChangePassScreen(),
    // Container(),
    //
    // PortfolioScreen(),
    // TransactionScreen(),
    // ConfAllocationScreen(),
    // CapitalGainLossScreen(),
    // // NavScreen(),
    // TaxCertificateScreen(),
    // SurrenderFormScreen(),
    // CreateNewSip(),
    // Container(),


  ];

  void tempNameChange(){
    Get.put(HomeController()).screenPosition.value=14;
    screenPosition.value=14;
    update();
  }

  var screenDrawerIcon=[

    Icon(FontAwesomeIcons.train,color: AppConstant.mySecondaryColor()),
    Icon(FontAwesomeIcons.retweet,color: AppConstant.mySecondaryColor()),

  ];



void menuClicked(String name){
  if(name.contains('Update Profile')){
    print('Update clicked');
    Get.toNamed(UpdateProfileScreen.routeName);
  }else if(name.contains('Change Password')){
    print('Password clicked');
    Get.toNamed(ChangePassScreen.routeName);
  }else{
    print('Logout clicked');

    Get.defaultDialog(

      title: 'Logout!',
      titleStyle: TextStyle(color: AppConstant.mySecondaryColor(), fontWeight: FontWeight.bold),
      middleText: 'Do you want to logout!',
      middleTextStyle: TextStyle(color: AppConstant.mySecondaryColor()),

      actions: [

        IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(FontAwesomeIcons.windowClose)),
        IconButton(onPressed: (){
          _logout();
          Get.back();
          // Get.offNamedUntil(LoginPage.routeName, (route) => false);
        }, icon: Icon(FontAwesomeIcons.checkSquare))
      ],

    );
  }

}

void _logout() async{
    SharedPreferences p = await SharedPreferences.getInstance();
    p.clear();

    AppConstant.showMyToast('Logout Successful');
    // AppConstant.showMySnackbar('Logout', 'this is message');
  }


}