
import 'package:dhaka_metro/screens/homePage/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/common_wigets/account_info_item.dart';
import 'package:dhaka_metro/common_wigets/list_header.dart';
import 'package:dhaka_metro/screens/homePage/fragments/profile/profile_controller.dart';
import 'package:dhaka_metro/utils/app_constent.dart';


class ProfileScreen extends StatelessWidget {

  static const routeName='/profile_screen';

  ProfileController _controller=Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    // _controller.getProfileData();
    return Container(
      height: Get.size.height,

      child: accountInformation(),
    );
  }


  Widget accountInformation() {
    var itemName=[
        'Investor Details',
        'Investor ID Number',
        'Name',
        'Account Opening Date',

        'Mailing Address',
        'Mobile No.',
        'Email ID',
        'Bank Information',

        'Investment Type',
        'Bank Name',
        'Branch',
        'Account No.',

        'Account No.',
        'Fund Name',
        'Registration No.',
        'Bank Name',

        'Branch',
        'Account No.'

    ];



    return  SingleChildScrollView(
      child: Container(

        margin: EdgeInsets.only(left: 10, right: 10,top: 20, bottom: 20),
        width: Get.width,
        decoration: BoxDecoration(
            color: AppConstant.myMainColor(),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.elliptical(20, 20),
              topRight: Radius.elliptical(20, 20),
              bottomLeft: Radius.elliptical(20, 20),
              bottomRight: Radius.elliptical(20, 20),
            )),
        child: Card(

          color: Color(0xfff1f1f1),
          margin: EdgeInsets.only(top: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: Get.size.width,
            margin: EdgeInsets.only(top: 10, bottom: 40),
            child: Obx(()=>Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10,top: 15,bottom: 20),
                  child: Text(itemName[0].toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                AccountInfoItem(itemName[1],_controller.profileData.value.users?.clientId??''),
                SizedBox(height: 3),
                AccountInfoItem(itemName[2],_controller.profileData.value.users?.name??'${_controller.profileData.value.users?.institutionName??''}'),
                SizedBox(height: 3),
                AccountInfoItem(itemName[3],AppConstant.timeFormatWithHipen(_controller.profileData.value.users?.createdAt??'2023-09-14 11:52:43+00:00')),

                SizedBox(height: 3),
                AccountInfoItem(itemName[4],_controller.profileData.value.investorBankInfo?.mailingaddress??''),
                SizedBox(height: 3),
                AccountInfoItem(itemName[5],_controller.profileData.value.users?.mobileNo??''),
                SizedBox(height: 3),
                AccountInfoItem(itemName[6],_controller.profileData.value.users?.email??''),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10,top: 15, bottom: 10),
                  child: Text(
                    itemName[7].toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                AccountInfoItem(itemName[8],_controller.profileData.value.investorBankInfo?.investmenttype??''),
                SizedBox(height: 3),
                AccountInfoItem(itemName[9],_controller.profileData.value.investorBankInfo?.orgname??''),
                SizedBox(height: 3),
                AccountInfoItem(itemName[10],_controller.profileData.value.investorBankInfo?.branchname??''),
                SizedBox(height: 3),
                AccountInfoItem(itemName[11],_controller.profileData.value.investorBankInfo?.bankaccountno??''),
                SizedBox(height: 3),

              ],
            ),
            ),
          ),
        ),
      ),
    );
  }

  // getDashboardWidget(String value) {
  //   print('getStepCheck:->Received  $value');
  //
  //   switch(value){
  //     case 'SELECT-FUND':{///working fine
  //       Get.put(HomeController()).tempNameChange();
  //       return FundSelectScreen();
  //     }
  //     case 'INVESTMENT':{///working fine
  //       Get.put(HomeController()).tempNameChange();
  //       return BoAcNoPage();
  //     }
  //     case 'BOACCOUNT':{///working fine
  //       Get.put(HomeController()).tempNameChange();
  //       return InvestorDetailsScreen();
  //     }
  //     case 'PAYMENT_UNCOMPLETE':{///working fine
  //       Get.put(HomeController()).tempNameChange();
  //       //return ThankYouScreen();
  //       return InvestorDetailsScreen();
  //     }
  //
  //
  //     case 'BOACCOUNT-1':{
  //       Get.put(HomeController()).tempNameChange();
  //       return PaymentOptionScreen();
  //     }
  //     case 'PAYMENTOP':{ ///working fine api
  //       Get.put(HomeController()).tempNameChange();
  //       return OfflineDepositFileUploadScreen();
  //       //return ThankYouScreen();
  //     }
  //
  //
  //
  //     case 'PAYMENTOP-1':{
  //       Get.put(HomeController()).tempNameChange();
  //       return ThankYouScreen();
  //     }
  //
  //     case 'PAYMENTOP-2':{
  //       Get.put(HomeController()).tempNameChange();
  //       return ThankYouScreenBankDeposit();
  //     }
  //
  //
  //     case 'INVESTMENT_COMPLETE':{
  //       Get.put(BoAcIndividualController()).getDefaultData();
  //       Get.put(BoAcIndividualController()).activeStepIndex.value=0;
  //       return BoAccountIndivdualScreen();
  //     }
  //
  //   case 'APPLICATIONFORM':{
  //     Get.put(HomeController()).tempNameChange();
  //
  //       Get.put(BoAcIndividualController()).getDefaultData().then((value) {
  //         Get.put(BoAcIndividualController()).update();
  //       });
  //     Get.put(BoAcIndividualController()).activeStepIndex.value=1;
  //       return BoAccountIndivdualScreen();
  //   }
  //
  //     case 'DOCUMENTSUBMISSION':{
  //       Get.put(HomeController()).tempNameChange();
  //
  //       Get.put(BoAcIndividualController()).getDefaultData();
  //       Get.put(BoAcIndividualController()).activeStepIndex.value=2;
  //       return BoAccountIndivdualScreen();
  //     }
  //
  //     case 'BANKDETAILS':{
  //       Get.put(HomeController()).tempNameChange();
  //       Get.put(BoAcIndividualController()).getDefaultData();
  //
  //       if(Get.put(BoAcIndividualController()).typeOfAccount.value=='institution'){
  //         Get.put(BoAcIndividualController()).activeStepIndex.value=1;
  //       }else{
  //         Get.put(BoAcIndividualController()).activeStepIndex.value=3;
  //       }
  //
  //       return BoAccountIndivdualScreen();
  //     }
  //
  //     case 'FINISH':{
  //
  //       //Get.put(HomeController()).tempNameChange();
  //       return accountInformation();
  //     }
  //
  //     default:
  //       // Get.put(HomeController()).tempNameChange();
  //       return accountInformation();
  //   }
  // }


}