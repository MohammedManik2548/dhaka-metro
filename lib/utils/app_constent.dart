import 'dart:ffi';

import 'package:connectivity/connectivity.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:dhaka_metro/common_wigets/list_item_actions.dart';
import '../screens/investor_reg_page/investor_reg_page.dart';

class AppConstant {

  static String sharedKey_NameOfInstitution="aims"+"institution_name";
  static String sharedKey_RegNoInstitution="aims"+"registration_no";
  static String sharedKey_IncorporationInstitution="aims"+"incorporation_date";
  static String sharedKey_ClientName="aims"+"client_id";
  static String sharedKey_AccountType="aims"+"account_type";
  static String sharedKey_InvestorDetailsId="aims"+"investor_details_id";
  static String sharedKey_inistituionBoAcountNo="aims"+"INST_BO_ACCOUNT_NO";
 // static String sharedKey_inistituionBoAcountNo="aims"+"INST_BO_ACCOUNT_NO";


  static Color myMainColor() {
    return Color(0xff107144);
  }

  static Color mySecondaryColor() {
    return Color(0xff333333);
  }

  static Color textColorMain() {
    return Color(0xffffffff);
  }

  static Color scaffoldColor() {
    return Color(0xfff6f6f6);
  }

  static BoxShadow myBoxShadow1() {
    return BoxShadow(
      color: AppConstant.myMainColor().withOpacity(0.3),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    );
  }

  static double percentCalcultor(double percent, double value){
    var d=(value*percent)/100;
    return d;
  }

  static BoxShadow myBoxShadow2() {
    return BoxShadow(
      color: AppConstant.myMainColor().withOpacity(0.1),
      spreadRadius: 3,
      blurRadius: 3,
      offset: Offset(0, 3), // changes position of shadow
    );
  }



  static String openDatePickerDialogBox(String msg) {
    var yourSelectedDate = '';

    Get.bottomSheet(Container(
      height: 40 / 100 * Get.size.height,
      decoration: BoxDecoration(
        color: AppConstant.scaffoldColor(),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
            height: 5 / 100 * Get.size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListItemActions(
                    corner: 'dfd',
                    align: 'ss',
                    title: 'Cancel',
                    size: 20 / 100 * Get.size.width,
                    position: 1,
                    callback: () {
                      Get.back();
                    }),
                Text(
                  msg,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                ListItemActions(
                    corner: 'dfd',
                    align: 'ss',
                    title: 'Confirm',
                    size: 20 / 100 * Get.size.width,
                    position: 1,
                    callback: () {
                      Get.back();
                    }),
              ],
            ),
          ),
          Divider(
            height: 1,
          ),
          Container(
            // color: Colors.yellow,
            height: 20 / 100 * Get.size.height,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime(2001, 1, 1),
              onDateTimeChanged: (DateTime newDateTime) {
                yourSelectedDate = '$newDateTime';
              },
            ),
          )
        ],
      ),
    ));
    return yourSelectedDate;
  }

  static String dateFormat(String substring) {
    var inputFormat = DateFormat('MM/dd/yyyy');
    var inputDate = inputFormat.parse(substring); // <-- dd/MM 24H format
    var outputFormat = DateFormat('dd-MMM-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }
  static String dateFormatPassport(String substring) {
    var inputFormat = DateFormat('dd-MM-yyyy');
    var inputDate = inputFormat.parse(substring); // <-- dd/MM 24H format
    var outputFormat = DateFormat('MM-dd-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String dateFormatForReport(String substring) {
    var inputFormat = DateFormat('dd-MM-yyyy');
    var inputDate = inputFormat.parse(substring); // <-- dd/MM 24H format
    var outputFormat = DateFormat('yyyy-MM-dd');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String dateFormatHipen(String substring) {
    var inputFormat = DateFormat('yyyy-MM-dd');
    var inputDate = inputFormat.parse(substring); // <-- dd/MM 24H format
    var outputFormat = DateFormat('dd-MMM-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String dateFormatHipenWithTime(String substring) {
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate = inputFormat.parse(substring); // <-- dd/MM 24H format
    var outputFormat = DateFormat('yyyy-MMM-dd-HHmmss');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String currentTimeWithFormat() {
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate =
        inputFormat.parse('${DateTime.now()}'); // <-- dd/MM 24H format
    var outputFormat = DateFormat('dd-MMM-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String dateFormatSplash(String substring) {
    var inputFormat = DateFormat('MM/dd/yyyy');
    var inputDate = inputFormat.parse(substring); // <-- dd/MM 24H format
    var outputFormat = DateFormat('dd-MMM-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }


  static bool sharedKeyUserExist = false;
  static String sharedKeyUserName = 'CSIAM_NAME';
  static String sharedKeyUserEmail = 'CSIAM_EMAIL';
  static String sharedKeyUserPhone = 'CSIAM_PHONE';
  static String sharedKeyUserToken = 'CSIAM_TOKEN';
  static String sharedInvestorCode = 'CSIAM_Investor_Code';

  static String singleValueFormat(String v1) {
    double value1 = double.parse(v1.toString());
    String value = NumberFormat.decimalPattern().format(value1);
    return value;
  }

  static Future<bool> checkInternetConnection() async {
    bool isAvailable = false;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      print('Internet Connection available ');
      isAvailable = true;
    } else {
      print('No Internet Connection available ');
      isAvailable = false;
    }
    return isAvailable;
  }

  static void showMyToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: mySecondaryColor(),
      textColor: Colors.white,
    );
  }

  static Widget stepNextBack(BuildContext context, String s, Color color,
      VoidCallback? callback, double w) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(180))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppConstant.myMainColor(), AppConstant.myMainColor()]),
            borderRadius: BorderRadius.circular(180)),
        child: Container(
          width: w,
          height: 40,
          alignment: Alignment.center,
          child: Text(
            s,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }

  static void showMySnackbar(String title, String msg) {
    Get.snackbar(
      title, msg,
      backgroundColor: myMainColor(),
      colorText: Colors.white,
      backgroundGradient:
          LinearGradient(colors: [AppConstant.myMainColor(), AppConstant.myMainColor()]),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      // boxShadows: [BoxShadow(color: Colors.black)],
    );

    // Fluttertoast.showToast(
    //   msg: msg,
    //   backgroundColor: myMainColor(),
    //   textColor: Colors.white,
    //
    //
    // );
  }

  static void internetConnectionAlertDialog() {
    Get.defaultDialog(
      title: 'No Internet',
      titleStyle: TextStyle(
          color: AppConstant.mySecondaryColor(), fontWeight: FontWeight.bold),
      content: Container(
        alignment: Alignment.center,
        // color: Colors.grey,
        height: 52 / 100 * Get.size.width,
        width: 60 / 100 * Get.size.width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              // color: Colors.red,
              height: 52 / 100 * Get.size.width,
              width: 60 / 100 * Get.size.width,
              child: Lottie.asset('assets/anim/nonet.json'),
            ),

            // Container(
            //   // color: Colors.yellow,
            //   height: 8/100*Get.size.width,
            //   width: 60/100*Get.size.width,
            //   child: Center(child: Text('No Internet Connection', style: TextStyle(color: AppConstant.mySecondaryColor()),)),
            //
            // ),
          ],
        ),
      ),
    );
  }

  static void myPopup(String msg1, String msg2, String msg3) {
    Get.defaultDialog(
      title: '',
      content: Container(
        margin: EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        // color: Colors.grey,
        height: 35 / 100 * Get.size.width,
        width: 70 / 100 * Get.size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Text(
              msg1,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      //   backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Get.to(InvestorRegPage());
                    },
                    child: Text(
                      msg2,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      // backgroundColor: AppConstant.myMainColor(),
                    ),
                    onPressed: () {},
                    child: Text(
                      msg3,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Future<void> myPopup2(
      BuildContext context, String msg1, String msg2, String msg3) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return DelayedDisplay(
          delay: Duration(seconds: 0),
          child: CupertinoAlertDialog(
            content: Container(
              height: 150.0,
              width: 225.0,
              padding: EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          AppConstant.myPopup2(context, msg1, msg2, msg3)
                              .ignore();
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    msg1,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            //    backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: Text(
                            msg2,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            //  backgroundColor: AppConstant.myMainColor(),
                          ),
                          onPressed: () {},
                          child: Text(
                            msg3,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static void internetErrorAlert(String title, String msg) {
    Get.defaultDialog(
      title: title,
      titleStyle: TextStyle(
          color: AppConstant.mySecondaryColor(), fontWeight: FontWeight.bold),
      content: Container(
        alignment: Alignment.center,
        // color: Colors.grey,
        height: 60 / 100 * Get.size.width,
        width: 60 / 100 * Get.size.width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              // color: Colors.red,
              height: 52 / 100 * Get.size.width,
              width: 60 / 100 * Get.size.width,
              child: Lottie.asset('assets/anim/alert.json'),
            ),
            Container(
              // color: Colors.yellow,
              height: 8 / 100 * Get.size.width,
              width: 60 / 100 * Get.size.width,
              child: Center(
                  child: Text(
                msg,
                style: TextStyle(color: AppConstant.mySecondaryColor()),
              )),
            ),
          ],
        ),
      ),
    );
  }

  static String dateTimeChartFormat(String s) {
//Oct 03, 2019
    var inputFormat = DateFormat('MMM dd, yyyy');
    var inputDate = inputFormat.parse(s); // <-- dd/MM 24H format
    var outputFormat = DateFormat('dd-MM-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String timeFormatWithHipen(String substring) {
    var d=DateFormat.yMMMMd().add_jm().format(DateTime.parse(substring).toLocal());
    return d;
  }

// primaryColor: AppConstant.myMainColor(),
// accentColor: Color(0xff333333),
// hoverColor: Color(0xff333333),

}
