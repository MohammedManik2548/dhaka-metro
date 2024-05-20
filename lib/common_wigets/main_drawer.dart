
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/screens/homePage/home_controller.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

import '../screens/homePage/fragments/profile/profile_controller.dart';




class MainDrawer extends StatelessWidget {
  HomeController _controller=Get.put(HomeController());
  // HomeController _controller=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Obx(()=>ListView(
        children: [

          Container(
            height: 150,
            // color: Color(0xff086508),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    // begin: Alignment.centerLeft,
                    // end: Alignment.centerRight,
                    colors: [Colors.black,AppConstant.myMainColor()]),

                  // image:  DecorationImage(
                  //   image:  ExactAssetImage('assets/images/unisoft_logo.png',),
                  //   // fit: BoxFit.cover,
                  //   // colorFilter: new ColorFilter.mode(AppConstant.mySecondaryColor().withOpacity(0.4), BlendMode.dstATop),
                  // ),
                borderRadius:BorderRadius.only(bottomRight: Radius.circular(50)) ,
              ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() => Text(_controller.userName.value.toString(),style: TextStyle(color: AppConstant.textColorMain(),fontWeight: FontWeight.bold),),),
                  Obx(() => Text(_controller.userEmail.toString(),style: TextStyle(color: AppConstant.textColorMain(),fontWeight: FontWeight.normal),)),
                ],
              ),
            ),
          ),



          Visibility(
            visible: _controller.userType.value=='0' || _controller.userType.value=='1',
            child: _drawerListItem(0),),


          Visibility(
            visible: _controller.userType.value=='0' || _controller.userType.value=='2',
            child: _drawerListItem(1),),


          // Visibility(
          //   visible: _controller.userType.value=='0' || _controller.userType.value=='2',
          //   child: _drawerListItem(2),),
          //
          //
          // Visibility(
          //   visible: _controller.userType.value=='0' || _controller.userType.value=='2',
          //   child: _drawerListItem(3),),
          // Visibility(
          //   visible: _controller.userType.value=='0' || _controller.userType.value=='2',
          //   child: _drawerListItem(4),),
          // Visibility(
          //   visible: _controller.userType.value=='0' || _controller.userType.value=='1',
          //   child: _drawerListItemExpansionTile(5),),
          // Visibility(
          //   visible: _controller.userType.value=='0' || _controller.userType.value=='2',
          //   child: _drawerListItem(12),),
          // Visibility(
          //   visible: _controller.userType.value=='0' || _controller.userType.value=='2',
          //   child: _drawerListItem(13),),
          // Visibility(
          //   visible: _controller.userType.value=='0' || _controller.userType.value=='2',
          //   child: _drawerListItem(9),),



        ],
      )),
    );
  }

  Widget _drawerListItem(int position){
    HomeController _controller1=Get.find<HomeController>();
    return Container(
      // color: Colors.green,

      margin: const EdgeInsets.only(top: 1, left: 5, right: 5),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.white
          color: _controller.screenPosition.value==position? AppConstant.myMainColor().withOpacity(0.1):null,
          // color: AppConstant.myMainColor().withOpacity(0.2)
      ),
      child: ListTile(
        title: Text(_controller1.screenHeader[position], style: TextStyle(color: AppConstant.mySecondaryColor()),),
        leading: _controller1.screenDrawerIcon[position],
        onTap: (){
          _controller1.screenPosition.value=position;
          Get.back();
            // if(position==13){
            //   Get.back();
            //   // _controller1.menuClicked('Logout');
            // }else{
            //
            //   if(Get.put(ProfileController()).incompleteForm.value=="FINISH"){
            //    // Get.put(ProfileController()).changeDashboard('no');
            //     _controller1.screenPosition.value=position;
            //     // print('Position${_controller.screenPosition.value}');
            //     Get.back();
            //   }else{
            //     Get.back();
            //   }
            //
            //
            //
            // }

        },),
    );

  }



  Widget _drawerListItemExpansionTile(int position){


    HomeController _con=Get.find<HomeController>();
    return ExpansionTile(

      title: Text(_con.screenHeader[position], style: TextStyle(color: AppConstant.mySecondaryColor()),),
      leading: _con.screenDrawerIcon[position],
      collapsedTextColor: AppConstant.mySecondaryColor(),
      expandedAlignment: Alignment.center,
      iconColor: AppConstant.mySecondaryColor(),
      children: [
        _drawerListItem2(6),
        _drawerListItem2(7),
        _drawerListItem2(8),
        // _drawerListItem2(9),
        _drawerListItem2(9),
        _drawerListItem2(10),
        _drawerListItem2(11),

      ],

    );

  }

  Widget _drawerListItem2(int position){
    HomeController _con=Get.find<HomeController>();
    return Container(

      margin: EdgeInsets.only(top: 1, left: 5, right: 5),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.white
        color: _controller.screenPosition.value==position? AppConstant.myMainColor().withOpacity(0.1):Colors.white,
        // color: AppConstant.myMainColor().withOpacity(0.2)
      ),
      child: ListTile(
        title: Text(_con.screenHeader[position], style: TextStyle(color: AppConstant.mySecondaryColor()),),
        leading: Container(height: 12,width: 40,),
        onTap: (){


          if(Get.put(ProfileController()).incompleteForm.value=="FINISH"){
            _con.screenPosition.value=position;
            Get.back();
          }else{
            Get.back();
          }



        },),
    );

  }


}


