import 'dart:io';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:dhaka_metro/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'bindings/all_bindings.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();


  // );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dhaka Metro',
      smartManagement: SmartManagement.full,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppConstant.myMainColor(),
          //hintColor: AppConstant.mySecondaryColor(),
      ),

      builder: EasyLoading.init(),
      initialBinding: AllBindings(),
      defaultTransition: Transition.fadeIn,
      getPages:routeList,
      initialRoute: '/',
    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}