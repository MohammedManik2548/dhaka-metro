import 'dart:io';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/screens/homePage/fragments/dashboard/temp_class.dart';
import 'package:dhaka_metro/utils/api.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'dashboard_summary_data/account_summary.dart';
import 'dashboard_summary_data/dashboard_investor_summary.dart';
import 'dashboard_summary_details_data/summary_details_data.dart';
import '../../../../utils/fileupload_class.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardController extends GetxController
    with SingleGetTickerProviderMixin {
  var passedName = 'SHANTA FIRST INCOME UNIT FUN'.obs;
  var passedREGNo = ''.obs;
  var scrollController = ScrollController();

  var totalInvest = 0.0.obs;
  var totalDividend = 0.0.obs;
  var totalMarket = 0.0.obs;
  var totalReturn = 0.0.obs;
  var tabController;
  var etCDoc = TextEditingController();
  File file = File('');
  var tempTotalList=<TempClass>[].obs;
  var tempFundIdList=<AccountSummary>[].obs;
  // var investorCode = Get.find<LoginController>().investor_code.toString();

  late String fundId,registrationNo;
  // var fundId=''.obs;
  // var registrationNo=''.obs;

  RxObjectMixin<DashboardInvestorSummary> investmentSummaryData = DashboardInvestorSummary().obs;
  RxObjectMixin<SummaryDetailsData> getInvestmentDetailsByIdData = SummaryDetailsData().obs;

  @override
  void onInit() {
    // etCDoc.text = 'ss';
    tabController = TabController(length: 3, vsync: this);

    super.onInit();
  }






  void getInvestmentSummaryData() async {
    // getInvestmentDetailsByIdData.value = jsonDecode(data);
    // getInvestmentDetailsByIdData.value = SummaryDetailsData.fromJson(json.encode(data));
    // var investorCode = Get.find<LoginController>().investor_code.toString();

    SharedPreferences p = await SharedPreferences.getInstance();
    Dio dio = Dio();
    String url = Api.getDashboardInvestmentSummaryData;

    try {

      await AppConstant.checkInternetConnection().then((value) async {
        if (value == true) {

          EasyLoading.show(status: 'Loading');
          EasyLoading.dismiss();
          var response = await dio.post(url, data: {'investor_code':22});
          print('$runtimeType HIT_URL:-$url');
          print('Internet Connected: $runtimeType');
          print('$runtimeType:->Status Code  ${response.statusCode}');
          if (response.statusCode == 200) {
            investmentSummaryData.value = DashboardInvestorSummary.fromJson(response.data);

            // fundId=investmentSummaryData.value.accountSummary![0].fundId!;
            // registrationNo=investmentSummaryData.value.accountSummary![0].registrationNo!;

            investmentSummaryData.value.accountSummary?.forEach((element) {
              fundId=element.fundId!;
              registrationNo=element.registrationNo!;
            });

            p.setString('registrationNo', registrationNo);
            p.setString('fundId', fundId);

            print('investor_fundId:haha $fundId');
            print('investor_registration:haha $registrationNo');

            // Get.back();
            // AppConstant.showMySnackbar(
            //     'Success!', 'Password sent successfully');

          } else {
            AppConstant.showMySnackbar(
                'Failed!', 'Failed to Load Investment summary data');
            EasyLoading.dismiss();
          }
          EasyLoading.dismiss();
        } else {
          AppConstant.internetConnectionAlertDialog();
          print('No Internet Connection');
        }
      });
    } catch (e, l) {
      AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
      EasyLoading.dismiss();
      print('$runtimeType:->Error  $e');
      print('$runtimeType:->Line  $l');
      print('${StackTrace.current}:->Line  $l');
    }
  }

  void calculateTotalOverview(int  index){

    tempTotalList.add(TempClass(
        name: investmentSummaryData.value.accountSummary?[index].fund??'Name Not found',
        investmentCost: investmentSummaryData.value.accountSummary![index].portfolioStatement==null?'0':getInvestmentCost(investmentSummaryData.value.accountSummary![index].portfolioStatement?.averagebuyprice??'0', investmentSummaryData.value.accountSummary![index].unit??'0'),
        marketValue: investmentSummaryData.value.accountSummary![index].portfolioStatement==null?'0':investmentSummaryData.value.accountSummary![index].portfolioStatement?.currentmarketvalue??'0',
        dividendIncome: investmentSummaryData.value.accountSummary![index].portfolioStatement==null?'0':investmentSummaryData.value.accountSummary![index].dividendIncome?.toString()??'0',
        totalReturnValue: investmentSummaryData.value.accountSummary![index].portfolioStatement==null?'0': getTotalReturnValue(index)

    ));



   if(investmentSummaryData.value.accountSummary!.length==index+1){
     print('All Index finished');
     print(investmentSummaryData.value.accountSummary!.length);
     print(index+1);
     // _overviewCalculator();
   }


  }

  void _overviewCalculator() {
    print('$runtimeType overviewCalculator ${tempTotalList.length}');
    var _totalInvest = 0.0;
    var _totalDividend = 0.0;
    var _totalMarket = 0.0;
    var _totalReturn = 0.0;

    tempTotalList.forEach((element) {
      print('overviewCalculator ${element.totalReturnValue}');
      _totalInvest +=double.parse(element.investmentCost==''?'0.0':element.investmentCost);
      _totalDividend +=double.parse(element.dividendIncome==''?'0.0':element.dividendIncome);
      _totalMarket +=double.parse(element.marketValue==''?'0.0':element.marketValue);
      _totalReturn +=double.parse(element.totalReturnValue==''?'0.0':element.totalReturnValue);
    });

     totalInvest.value = _totalInvest;
     totalDividend.value = _totalDividend;
     totalMarket.value = _totalMarket;
     totalReturn.value = _totalReturn;


  }
  

  void getInvestmentSummaryDetailsData() async {
    // getInvestmentDetailsByIdData.value = SummaryDetailsData.fromJson(dataByID);
    // var investorCode = Get.find<LoginController>().investor_code.toString();
    // String? fundId = investmentSummaryData.value.accountSummary?[index].fund??'0';
    Dio dio = Dio();
    String url = Api.getDashboardInvestmentSummaryDetailsByID;

    try {


      await AppConstant.checkInternetConnection().then((value) async{
        if (value == true) {
          // EasyLoading.show(status: 'Loading');
          // EasyLoading.dismiss();
          var response = await dio.post(url, data: {
            'investor_code': 22,
            'fund_id': fundId,
            'registration_no': registrationNo,
          });
          print('investor_fund_id:$fundId');
          print('$runtimeType HIT_URL:-$url');
          print('Internet Connected: $runtimeType');
          print('$runtimeType:->Status Code  ${response.statusCode}');
          if (response.statusCode == 200) {
            getInvestmentDetailsByIdData.value = SummaryDetailsData.fromJson(response.data);

            // Get.back();
            // AppConstant.showMySnackbar(
            //     'Success!', 'Password sent successfully');
          } else {
            AppConstant.showMySnackbar(
                'Failed!', 'Failed to Load Investment summary data');
          }
          EasyLoading.dismiss();
        } else {
          AppConstant.internetConnectionAlertDialog();
          print('No Internet Connection');
        }
      });
    } catch (e, l) {
      AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
      print('$runtimeType:->Error  $e');
      print('$runtimeType:->Line  $l');
      print('${StackTrace.current}:->Line  $l');
    }
  }

  String getAccountType(String s) {
    var status = s;
    if (s == 'NON SIP') {
      status = 'Regular';
    }

    return status;
  }

  String getInvestmentCost(String avarageBuy, String unit) {
    var a = double.parse(avarageBuy);
    var b = double.parse(unit);

    return '${a * b}';
  }

  void openFilePicker() async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(dialogTitle: 'Select a file');

      if (result != null) {
        file = File('${result.files.single.path}');
        print(file.path);
        print(file.parent);
        print(file.absolute);

        String fileName = file.path.split('/').last;
        etCDoc.text = fileName;

        print('My File Name is $fileName');
        AppConstant.showMySnackbar('Success!', '$fileName is selected');
      } else {
        // User canceled the picker
      }
    } catch (e, l) {
      Fluttertoast.showToast(msg: 'File Selection Failed!');
      print('File Upload failed$e');
      print('File Upload failed$l');
    }
  }

  void submitSurrender(int index) async {
    String unitAppId= investmentSummaryData.value.pendingSurrender?[index].investorunitappid??'0';
    String fundId= investmentSummaryData.value.pendingSurrender?[index].portfolioid??'0';
    String investorRegNo= investmentSummaryData.value.pendingSurrender?[index].investorregno??'0';
    String noOfUnits= investmentSummaryData.value.pendingSurrender?[index].regularunit??'0';

    // var investorCode = Get.find<CommonController>().sharedPreInvestorCode.value.toString();
    Dio dio = Dio();
    String url = Api.postFileUpload;

    try {

      await FileUploadClass.formDataMaker(unitAppId, fundId, investorRegNo,noOfUnits, file).then((value) async{

        print(value);
        var response = await dio.post(url, data: value);
        print('$runtimeType HIT_URL:-$url');

        await AppConstant.checkInternetConnection().then((value) {
          if (value == true) {
            EasyLoading.show(status: 'Loading');
            print('Internet Connected: $runtimeType');
            print('$runtimeType:->Status Code  ${response.statusCode}');
            if (response.statusCode == 200) {
              EasyLoading.dismiss();
              AppConstant.showMySnackbar(response.data['status']==1?'Success!':'Failed', response.data['message']);
              print('DAADFASDFSD ${response.data}');
              getInvestmentSummaryDetailsData();
            } else {
              AppConstant.showMySnackbar(response.data['status']==1?'Success!':'Failed', response.data['message']);
            }

          } else {
            AppConstant.internetConnectionAlertDialog();
            print('No Internet Connection');
          }
        });


      });


    } catch (e, l) {
      AppConstant.internetErrorAlert('Ops!', 'Some things went wrong');
      print('$runtimeType:->Error  $e');
      print('$runtimeType:->Line  $l');
      print('${StackTrace.current}:->Line  $l');
    }
  }


  String getTotalReturnValue(int index) {
    var dividendIncome = investmentSummaryData
            .value.accountSummary![index].dividendIncome
            ?.toString() ??
        '0';
    var gainLoss = investmentSummaryData.value.accountSummary![index]
            .portfolioStatement?.realizedgainloss ??
        '0';
    var unrealizedgainloss = investmentSummaryData.value.accountSummary![index]
            .portfolioStatement?.unrealizedgainloss ??
        '0';

    var total = double.parse(dividendIncome) +
        double.parse(gainLoss) +
        double.parse(unrealizedgainloss);

    return '$total';
  }

  String getTotalDeposit(String s, String t) {

    return '${double.parse(s)+double.parse(t)}';

  }

  String getTotalAvargeInvestmentPrice(String s, String t) {


    return '${double.parse(s)*double.parse(t)}';
  }




}
