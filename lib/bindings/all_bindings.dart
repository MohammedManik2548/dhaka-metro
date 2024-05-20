import 'package:get/get.dart';
import 'package:dhaka_metro/screens/homePage/fragments/dashboard/dashboard_controller.dart';
import 'package:dhaka_metro/screens/homePage/home_controller.dart';
import 'package:dhaka_metro/screens/splashPage/splash_controller.dart';
import 'package:dhaka_metro/utils/common_controller.dart';



class AllBindings extends Bindings{

  @override
  void dependencies() {

    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CommonController>(() => CommonController());
    Get.lazyPut<DashboardController>(() => DashboardController());


  }
}