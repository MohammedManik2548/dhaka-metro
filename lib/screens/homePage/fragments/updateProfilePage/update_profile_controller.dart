

import 'package:dhaka_metro/screens/homePage/fragments/updateProfilePage/model/ProfileModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'model/bank_list.dart';

class UpdateProfileController extends GetxController{
  var etControllerFundName=TextEditingController();
  var etControllerInvestmentStyle=TextEditingController();
  var etControllerAddress=TextEditingController();
  var etControllerCip=TextEditingController();
  var etControllerCash=TextEditingController();
  var etControllerSearch=TextEditingController();

  var etControllerBankName=TextEditingController();
  var etControllerBranchName=TextEditingController();
  var etControllerAcNo=TextEditingController();

  var etControllerDividendOption=TextEditingController();
  var etControllerBoAcNo=TextEditingController();
  var etControllerOthersInfo=TextEditingController();

  var fundIsActive=true.obs;
  var branchIsLoaded=true.obs;
  var isFundNameIsActive=true.obs;
  var isREGNameIsActive=true.obs;
  var isBranchIsActive=true.obs;
  var vehicleIsLoaded=true.obs;
  var bankList=<BankList>[].obs;
  // var branchList=<BranchList>[].obs;
  // var vehicleList=<VehicleData>[].obs;
  var isBothSelected = false.obs;
  RxObjectMixin<ProfileModel> profileData = ProfileModel().obs;


  var formKey=GlobalKey<FormState>();


  double total = 0.0;

  // void getBankName() async {
  //   SharedPreferences p = await SharedPreferences.getInstance();
  //   var access=p.getString('access');
  //   var refresh=p.getString('refresh');
  //   Dio dio = Dio();
  //   String url = Api.getBankName;
  //   print('$runtimeType HIT_URL1:-$url');
  //   try {
  //
  //
  //     await AppConstant.checkInternetConnection().then((value) async{
  //       if (value == true) {
  //         EasyLoading.show(status: 'Loading');
  //         var response = await dio.get(url,options: Options(headers: {
  //           "Authorization":"Bearer $access"
  //         }));
  //         print('$runtimeType HIT_URL:-$url');
  //         print('Internet Connected: $runtimeType');
  //         print('$runtimeType:->Status Code  ${response.statusCode}');
  //         if (response.statusCode == 200) {
  //           var list=response.data['data'] as List;
  //           var list2=list.map((e) => BankList.fromJson(e)).toList();
  //           bankList.clear();
  //           bankList.addAll(list2);
  //           fundIsActive.value=false;
  //
  //         } else {
  //           AppConstant.showMySnackbar('Failed!', 'Failed to Load Investment summary data');
  //         }
  //         EasyLoading.dismiss();
  //       } else {
  //         AppConstant.internetConnectionAlertDialog();
  //       }
  //     });
  //   } catch (e, l) {
  //     AppConstant.internetErrorAlert('Ops!', 'Somethings wants wrong');
  //     EasyLoading.dismiss();
  //   }
  //
  // }
  // void getProfileData() async {
  //   SharedPreferences p = await SharedPreferences.getInstance();
  //   var access=p.getString('access');
  //   var refresh=p.getString('refresh');
  //   Dio dio = Dio();
  //   String url = Api.getProfile;
  //   print('$runtimeType HIT_URL1:-$url');
  //   try {
  //
  //
  //     await AppConstant.checkInternetConnection().then((value) async{
  //       if (value == true) {
  //         EasyLoading.show(status: 'Loading');
  //         var response = await dio.get(url,options: Options(headers: {
  //           "Authorization":"Bearer $access"
  //         }));
  //         print('$runtimeType HIT_URL:-$url');
  //         print('Internet Connected: $runtimeType');
  //         print('$runtimeType:->Status Code  ${response.statusCode}');
  //         if (response.statusCode == 200) {
  //           profileData.value = ProfileModel.fromJson(response.data);
  //           etControllerAddress.text = profileData.value?.investorBankInfo?.mailingaddress??'';
  //           etControllerAcNo.text = profileData.value?.investorBankInfo?.bankaccountno??'';
  //           etControllerBoAcNo.text = profileData.value?.investorBankInfo?.boaccountno??'';
  //           etControllerInvestmentStyle.text ='Single Payment Investment (Non-SIP)';
  //
  //         } else {
  //           AppConstant.showMySnackbar('Failed!', 'Failed to Load Investment summary data');
  //         }
  //         EasyLoading.dismiss();
  //       } else {
  //         AppConstant.internetConnectionAlertDialog();
  //       }
  //     });
  //   } catch (e, l) {
  //     AppConstant.internetErrorAlert('Ops!', 'Somethings wants wrong');
  //     EasyLoading.dismiss();
  //   }
  //
  // }
  //
  // // Future<void> updateProfileSubmit() async{
  // //   if(etControllerFundName.text.isEmpty){
  // //     Fluttertoast.showToast(msg: 'Please Select Investment Vehicle');
  // //   }else if(etControllerInvestmentStyle.text.isEmpty){
  // //     Fluttertoast.showToast(msg: 'Please Select Investment Type');
  // //   }else if(isBothSelected.value==true && etControllerCip.text.isEmpty){
  // //     Fluttertoast.showToast(msg: 'Please Select CIP Percentage');
  // //   }else if(isBothSelected.value==true && etControllerCash.text.isEmpty){
  // //     Fluttertoast.showToast(msg: 'Please Select CASH Percentage');
  // //   }else{
  // //     SharedPreferences p = await SharedPreferences.getInstance();
  // //     var access=p.getString('access');
  // //
  // //     Dio dio = Dio();
  // //     String url = Api.updateProfile;
  // //     Map<String, dynamic> mapData={
  // //       "fund_name":etControllerFundName.text.toString(),
  // //       "investment_type":etControllerInvestmentStyle.text.toString(),
  // //       "mailing_address":etControllerAddress.text.toString(),
  // //       "bank_name":etControllerBankName.text.toString(),
  // //       "branch_name":etControllerBranchName.text.toString(),
  // //       "account_no":etControllerAcNo.text.toString(),
  // //       "dividend_option":etControllerDividendOption.text.toString(),
  // //       "cip_percentage":etControllerCip.text,
  // //       "cash_percentage":etControllerCash.text,
  // //       "bo_account_no":etControllerBoAcNo.text,
  // //       "others":etControllerOthersInfo.text.toString(),
  // //     };
  // //     // var dddd=jsonEncode(mapData);
  // //     var dd=json.encode(mapData);
  // //     // print("JJJJ1: $dddd");
  // //     // print("JJJJ2: $dd");
  // //
  // //
  // //
  // //     try {
  // //
  // //
  // //       await AppConstant.checkInternetConnection().then((value) async{
  // //         if (value == true) {
  // //
  // //           await MyForm.myFromMaker(mapData).then((v) async{
  // //
  // //             // horizontalProgressIsActive.value=true;
  // //             var response = await dio.post(url, data: dd,options: Options(
  // //                 headers: {
  // //                   "Authorization":"Bearer $access"
  // //                 }
  // //             ));
  // //
  // //             print('$runtimeType HIT_URL:-$url');
  // //             print('$runtimeType HIT_Map:-$mapData');
  // //             print('Internet Connected: $runtimeType');
  // //             print('$runtimeType:->Status Code  ${response.statusCode}');
  // //             print(response.statusCode);
  // //             if (response.statusCode == 200) {
  // //
  // //
  // //               var mes= response.data['message'];
  // //               print('response_message:-> $mes');
  // //               Fluttertoast.showToast(msg: mes);
  // //               clear();
  // //
  // //
  // //             } else {
  // //               // horizontalProgressIsActive.value=false;
  // //               AppConstant.showMySnackbar('Failed!', 'Failed to Load Investment summary data');
  // //             }
  // //
  // //           });
  // //
  // //
  // //
  // //         } else {
  // //           // horizontalProgressIsActive.value=false;
  // //           AppConstant.internetConnectionAlertDialog();
  // //           print('No Internet Connection');
  // //         }
  // //       });
  // //     } on DioError catch (e, l) {
  // //       // horizontalProgressIsActive.value=false;
  // //       // dataSubmitSuccess.value=false;
  // //       AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
  // //     }
  // //   }
  // //
  // //
  // //
  // // }
  // percentageCalculation() {
  //   //double p = double.parse(buyUBOAccountNo.text.toString());
  //
  //   double p = 0.0;
  //   int m = 100;
  //   int q = 0;
  //
  //   if(etControllerCip.text==''){
  //     q=0;
  //   }else{
  //     q= int.parse(etControllerCip.text);
  //   }
  //   // max= ((p / 100) * 10) + p;
  //   // min= p - ((p / 100) * 10);
  //
  //   total = (q - p);
  //   var i = m-total.toInt();
  //   etControllerCash.text='$i';
  //
  //   print('check_max_min: $i');
  // }
  // void getVehicle() async {
  //   SharedPreferences p = await SharedPreferences.getInstance();
  //   var access=p.getString('access');
  //   var refresh=p.getString('refresh');
  //   Dio dio = Dio();
  //   String url = Api.getUpdateProfileBasicData;
  //   print('$runtimeType HIT_URL1:-$url');
  //   try {
  //
  //
  //     await AppConstant.checkInternetConnection().then((value) async{
  //       if (value == true) {
  //         EasyLoading.show(status: 'Loading');
  //         var response = await dio.get(url,options: Options(headers: {
  //           "Authorization":"Bearer $access"
  //         }));
  //         print('$runtimeType HIT_URL:-$url');
  //         print('Internet Connected: $runtimeType');
  //         print('$runtimeType:->Status Code  ${response.statusCode}');
  //         if (response.statusCode == 200) {
  //           var list=response.data['data'] as List;
  //           var list2=list.map((e) => VehicleData.fromJson(e)).toList();
  //           vehicleList.clear();
  //           vehicleList.addAll(list2);
  //           vehicleIsLoaded.value=false;
  //
  //         } else {
  //           AppConstant.showMySnackbar('Failed!', 'Failed to Load Investment summary data');
  //         }
  //         EasyLoading.dismiss();
  //       } else {
  //         AppConstant.internetConnectionAlertDialog();
  //       }
  //     });
  //   } catch (e, l) {
  //     AppConstant.internetErrorAlert('Ops!', 'Somethings wants wrong');
  //     EasyLoading.dismiss();
  //   }
  //
  // }
  //
  // void getBranchList(String? id) async{
  //   SharedPreferences p = await SharedPreferences.getInstance();
  //   var access=p.getString('access');
  //   var refresh=p.getString('refresh');
  //   Dio dio = Dio();
  //   String url = Api.getBankBranchName;
  //
  //   try {
  //     await AppConstant.checkInternetConnection().then((value) async{
  //       if (value == true) {
  //         // branchList.clear();
  //         // branchIsLoaded.value=true;
  //         EasyLoading.show(status: 'Loading');
  //         var response = await dio.get(url+"?bank_id=$id",options: Options(headers: {
  //           "Authorization":"Bearer $access"
  //         }));
  //         print('$runtimeType HIT_URL:-$url');
  //         print('Internet Connected: $runtimeType');
  //         print('$runtimeType:->Status Code  ${response.statusCode}');
  //         if (response.statusCode == 200) {
  //           branchList.add(BranchList(orgbranchid: 1, branchname: "Select name"));
  //           var list=response.data['data'] as List;
  //           var list2=list.map((e) => BranchList.fromJson(e)).toList();
  //
  //           branchList.addAll(list2);
  //           branchIsLoaded.value=false;
  //
  //         } else {
  //           AppConstant.showMySnackbar('Failed!', 'Failed to Load Investment summary data');
  //         }
  //         EasyLoading.dismiss();
  //       } else {
  //         AppConstant.internetConnectionAlertDialog();
  //       }
  //     });
  //   } catch (e, l) {
  //     AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
  //     print('$runtimeType:->Error  $e');
  //     print('$runtimeType:->Line  $l');
  //     print('${StackTrace.current}:->Line  $l');
  //   }
  // }
  //
  // clear(){
  //   etControllerInvestmentStyle.clear();
  //   etControllerAddress.clear();
  //   etControllerAcNo.clear();
  //   etControllerDividendOption.clear();
  //   etControllerBoAcNo.clear();
  //   etControllerOthersInfo.clear();
  // }



}