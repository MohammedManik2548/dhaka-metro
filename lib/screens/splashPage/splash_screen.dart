import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:dhaka_metro/screens/splashPage/splash_controller.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

class SplashScreen extends StatelessWidget {
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // backgroundColor: const Color(0xffF3F8F5),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'WELCOME TO DHAKA METRO',
                style: TextStyle(
                  color: Color(0xff107144),
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset('assets/images/splash2.png')),
              //   SizedBox(height: 50,),
              //  Obx(()=>Text(controller.splashScreenName.value, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: AppConstant.myMainColor() ),)),
            ],
          ),
        ));
  }
}
