import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/screens/homePage/home_controller.dart';
import 'package:dhaka_metro/common_wigets/main_drawer.dart';
import 'package:dhaka_metro/utils/app_constent.dart';


//ignore: must_be_immutable
class HomePage extends StatelessWidget {
  static const routeName='/home_page';
  HomeController _controller=Get.put(HomeController());


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppConstant.scaffoldColor(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        // shape: ShapeBorder(
        //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
        //
        // ),
        backgroundColor: AppConstant.myMainColor(),
        title: GetX<HomeController>(builder: (c) => Text(c.screenHeader[c.screenPosition.value],style: const TextStyle(color: Colors.white),)),
        // actions: [
        //   // IconButton(onPressed: (){}, icon: Icon(Icons.brightness_low_rounded ))
        //   DropdownButton<String>(
        //
        //     underline: SizedBox(),
        //     icon:
        //        Padding(
        //          padding: const EdgeInsets.only(right: 10),
        //          child: Center(child: Icon(Icons.brightness_low_rounded, color: AppConstant.textColorMain(),)),
        //        ),
        //     // ),
        //     items: <String>['Update Profile', 'Change Password', 'Logout'].map((String value) {
        //       return DropdownMenuItem<String>(
        //         value: value,
        //         child: Text(value),
        //       );
        //     }).toList(),
        //     onChanged: (a) {
        //       _controller.menuClicked(a.toString());
        //
        //     },
        //   ),
        //   IconButton(onPressed: (){
        //     // Get.put(ProfileController()).changeDashboard('PAYMENTOP-1');
        //   }, icon: Icon(Icons.add_circle)),
        // ],
      ),

      // body: _controller.screenList[6],
       body: GetX<HomeController>(builder: (homeCon) => homeCon.screenList[homeCon.screenPosition.value],),

      drawer: MainDrawer(),
    );
  }
}
