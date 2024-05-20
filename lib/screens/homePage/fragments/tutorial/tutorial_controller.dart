
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/utils/api.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

import 'data/tutorial_data.dart';

class TutorialController extends GetxController{
  var a ='80'.obs;

  RxObjectMixin<TutorialData> tutorialData = TutorialData().obs;
  @override
  void onInit() {
    _getTutorialData();
    super.onInit();
  }
  void _getTutorialData() async {

    Dio dio = Dio();
    String url = Api.getTutorialData;

    try {

      await AppConstant.checkInternetConnection().then((value) async {
        if (value == true) {

          EasyLoading.show(status: 'Loading');
          EasyLoading.dismiss();
          var response = await dio.get(url);
          print('$runtimeType HIT_URL:-$url');

          print('Internet Connected: $runtimeType');
          print('$runtimeType:->Status Code  ${response.statusCode}');
          if (response.statusCode == 200) {
            tutorialData.value = TutorialData.fromJson(response.data);

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
}