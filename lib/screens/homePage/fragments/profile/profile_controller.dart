
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/utils/api.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'data/updated/DashboardData.dart';

class ProfileController extends GetxController{
  var totalInvest=1.0099.obs;
  var address='House 03, Road 11, PC Culture Housing, Adabor, Mohammadpur, Dhaka-1207'.obs;
  var scrollController = ScrollController();
  // var investorCode = Get.find<LoginController>().investor_code.toString();
  // var investmentStyle = 'Single Payment Investment'.obs;
  var bankName = 'AB Bank Limited'.obs;
  var branchName = 'Mirpur'.obs;
  var AccountNo = '12487255887444'.obs;
  var incompleteForm='no-step'.obs;//




  RxObjectMixin<DashboardData> profileData = DashboardData().obs;
  // @override
  // void onInit() {
  //   getProfileData();
  //   super.onInit();
  // }

  void changeDashboard(String d){
    incompleteForm.value=d;
    update();
  }


  // Future<void> getProfileDataHidden() async {
  //   SharedPreferences p = await SharedPreferences.getInstance();
  //   var access=p.getString('access');
  //   var refresh=p.getString('refresh');
  //   print('access_token_get_user:-$access');
  //
  //   Dio dio = Dio(
  //
  //   );
  //   String url = Api.getProfileData;
  //
  //   try {
  //
  //     await AppConstant.checkInternetConnection().then((value) async {
  //       if (value == true) {
  //
  //         var response = await dio.get(url,options: Options(headers: {
  //           "Authorization":"Bearer $access"
  //         }));
  //         print('$runtimeType HIT_URL:-$url');
  //
  //         print('Internet Connected: $runtimeType');
  //         print('_getProfileData:->Status Code  ${response.statusCode}');
  //         print('_getProfileData:->Data  ${response.data}');
  //         print('_getProfileData:->Url  ${response.requestOptions.uri}');
  //         if (response.statusCode == 200) {
  //           profileData.value = DashboardData.fromJson(response.data);
  //           // //  p.setString('client_id',profileData.value.users?.clientId??'' );
  //           // p.setString('client_name',profileData.value.users?.name??'');
  //           // p.setString('client_nid',profileData.value.users?.nid??'');
  //           // p.setString('client_email',profileData.value.users?.email??'');
  //           // p.setString('client_phone',profileData.value.users?.mobileNo??'');
  //           //
  //           // p.setString('client_passportNo',profileData.value.users?.passportNo??'');
  //           // p.setString('client_passportIssueDate',profileData.value.users?.passportDate??'');
  //           //
  //           // p.setString('INVESTOR_ACCOUNT_ID',"${profileData.value.investorBankInfo?.investorAccountId??''}");
  //           // p.setString('client_INVESTOR_REG_NO',"${profileData.value.investorBankInfo?.investorregno??''}");
  //           // p.setString('INVESTMENT_TYPE_ID',"${profileData.value.investorBankInfo?.investmenttypeid??''}");
  //           // p.setString('PORTFOLIO_ID',"${profileData.value.investorBankInfo?.portfolioid??''}");
  //           //
  //
  //           // p.setString(AppConstant.sharedKey_AccountType,profileData.value.users?.accountType??'');
  //           // p.setString(AppConstant.sharedKey_NameOfInstitution,profileData.value.users?.institutionName??'');
  //           // p.setString(AppConstant.sharedKey_RegNoInstitution,profileData.value.users?.registrationNo??'');
  //           // p.setString(AppConstant.sharedKey_IncorporationInstitution,profileData.value.users?.incorporationDate??'');
  //           //
  //           // print("YYYY::::send->${p.getString(AppConstant.sharedKey_AccountType)}");
  //           //
  //           //
  //           //
  //
  //         } else {
  //           AppConstant.showMySnackbar(
  //               'Failed!', 'Failed to Load Investment summary data');
  //         }
  //         EasyLoading.dismiss();
  //       } else {
  //         AppConstant.internetConnectionAlertDialog();
  //         print('No Internet Connection');
  //       }
  //     });
  //   } catch (e, l) {
  //     AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
  //     // EasyLoading.dismiss();
  //     print('$runtimeType:->Error  $e');
  //     print('$runtimeType:->Line  $l');
  //     print('${StackTrace.current}:->Line  $l');
  //   }
  // }
  // Future<void> getProfileData() async {
  //   SharedPreferences p = await SharedPreferences.getInstance();
  //   var access=p.getString('access');
  //   var refresh=p.getString('refresh');
  //   print('access_token_get_user:-$access');
  //
  //   Dio dio = Dio(
  //
  //   );
  //   String url = Api.getProfileData;
  //
  //   try {
  //
  //     await AppConstant.checkInternetConnection().then((value) async {
  //       if (value == true) {
  //
  //         EasyLoading.show(status: 'Loading');
  //         var response = await dio.get(url,options: Options(headers: {
  //           "Authorization":"Bearer $access"
  //         }));
  //         print('$runtimeType HIT_URL:-$url');
  //
  //         print('Internet Connected: $runtimeType');
  //         print('_getProfileData:->Status Code  ${response.statusCode}');
  //         print('_getProfileData:->Data  ${response.data}');
  //         print('_getProfileData:->Url  ${response.requestOptions.uri}');
  //         if (response.statusCode == 200) {
  //           profileData.value = DashboardData.fromJson(response.data);
  //         //  p.setString('client_id',profileData.value.users?.clientId??'' );
  //           p.setString('client_name',profileData.value.users?.name??'${profileData.value.users?.institutionName??""}');
  //           p.setString('client_nid',profileData.value.users?.nid??'');
  //           p.setString('client_email',profileData.value.users?.email??'');
  //           p.setString('client_phone',profileData.value.users?.mobileNo??'');
  //
  //           p.setString('client_passportNo',profileData.value.users?.passportNo??'');
  //           p.setString('client_passportIssueDate',profileData.value.users?.passportDate??'');
  //
  //           p.setString('INVESTOR_ACCOUNT_ID',"${profileData.value.investorBankInfo?.investorAccountId??''}");
  //           p.setString('client_INVESTOR_REG_NO',"${profileData.value.investorBankInfo?.investorregno??''}");
  //           p.setString('INVESTMENT_TYPE_ID',"${profileData.value.investorBankInfo?.investmenttypeid??''}");
  //           p.setString('PORTFOLIO_ID',"${profileData.value.investorBankInfo?.portfolioid??''}");
  //
  //           print('profile_controller_call: ${p.getString('INVESTOR_ACCOUNT_ID')}');
  //           p.setString(AppConstant.sharedKey_AccountType,profileData.value.users?.accountType??'');
  //           p.setString(AppConstant.sharedKey_NameOfInstitution,profileData.value.users?.institutionName??'');
  //           p.setString(AppConstant.sharedKey_RegNoInstitution,profileData.value.users?.registrationNo??'');
  //           p.setString(AppConstant.sharedKey_IncorporationInstitution,profileData.value.users?.incorporationDate??'');
  //
  //           print("YYYY::::send->${p.getString(AppConstant.sharedKey_AccountType)}");
  //
  //
  //
  //
  //         } else {
  //           AppConstant.showMySnackbar(
  //               'Failed!', 'Failed to Load Investment summary data');
  //         }
  //         EasyLoading.dismiss();
  //       } else {
  //         AppConstant.internetConnectionAlertDialog();
  //         print('No Internet Connection');
  //       }
  //     });
  //   } catch (e, l) {
  //     AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
  //     EasyLoading.dismiss();
  //     print('$runtimeType:->Error  $e');
  //     print('$runtimeType:->Line  $l');
  //     print('${StackTrace.current}:->Line  $l');
  //   }
  // }
  //  getStepCheck() async {
  //   SharedPreferences p = await SharedPreferences.getInstance();
  //   var access=p.getString('access');
  //   var refresh=p.getString('refresh');
  //
  //   Dio dio = Dio(
  //
  //   );
  //   String url = Api.getStepCheck;
  //
  //   try {
  //
  //     await AppConstant.checkInternetConnection().then((value) async {
  //       if (value == true) {
  //
  //          EasyLoading.show(status: 'Loading');
  //         var response = await dio.get(url,options: Options(headers: {
  //           "Authorization":"Bearer $access"
  //         }));
  //         print('getStepCheck HIT_URL:-$url');
  //         print('getStepCheck:->Status Code  ${response.statusCode}');
  //         // print('getStepCheck:->Status body  ${response.data}');
  //         print('getStepCheck:->Status body  ${response.data['data'][0]['STEP_CHECK']}');
  //         if (response.statusCode == 200) {
  //           EasyLoading.dismiss();
  //           var tempList=response.data["data"] as List;
  //           var newList=tempList.map((e) => StepModel.fromJson(e)).toList();
  //           stepModelList.addAll(newList);
  //           if(stepModelList.isNotEmpty){
  //             // if(response.data['data'][0]['STEP_CHECK']==null){
  //               incompleteForm.value=response.data['data'][0]['STEP_CHECK']??'SELECT-FUND';
  //             // }else{
  //             //   incompleteForm.value='SELECT-FUND';
  //             // }
  //             print("Profile_Page: Current Step->${incompleteForm.value}");
  //
  //               p.setString('PORTFOLIO_ID',"${response.data['data'][0]['PORTFOLIO_ID']??''}");
  //          //     p.setString('INST_BO_ACCOUNT_NO',"${response.data['data'][0]['INST_BO_ACCOUNT_NO']??''}");
  //               p.setString(AppConstant.sharedKey_inistituionBoAcountNo,"${response.data['data'][0]['INST_BO_ACCOUNT_NO']??'${response.data['data'][0]['BO_ACCOUNT_NO']??''}'}");
  //               p.setString("OPERATION_MODE_ID","${response.data['data'][0]['OPERATION_MODE_ID']??''}");
  //               p.setString("INVESTMENT_TYPE_ID","${response.data['data'][0]['INVESTMENT_TYPE_ID']??''}");
  //               p.setString("BO_ACCOUNT_NO","${response.data['data'][0]['BO_ACCOUNT_NO']??''}");
  //
  //
  //           }else{
  //             incompleteForm.value='no-step';
  //           }
  //
  //           update();
  //
  //           // incompleteForm.value="SELECT-FUND";
  //           // incompleteForm.value="INVESTMENT";
  //           // incompleteForm.value="BOACCOUNT";
  //           // incompleteForm.value="PAYMENTOP";
  //           // // incompleteForm.value="FINISH";
  //           // // incompleteForm.value="APPLICATIONFORM";
  //
  //           // print("Current-Step: ${incompleteForm.value}");
  //
  //
  //
  //         } else {
  //           AppConstant.showMySnackbar(
  //               'Failed!', 'Failed to Load Investment summary data');
  //         }
  //         // EasyLoading.dismiss();
  //       } else {
  //         AppConstant.internetConnectionAlertDialog();
  //         print('No Internet Connection');
  //       }
  //     });
  //   } catch (e, l) {
  //     AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
  //   }
  // }

}