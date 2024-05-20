import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/common_wigets/account_info_item.dart';
import 'package:dhaka_metro/screens/homePage/fragments/tutorial/tutorial_controller.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

class TutorialScreen extends StatelessWidget {
  TutorialController _controller=Get.put(TutorialController());
  @override
  Widget build(BuildContext context) {

    return Container(
      child: _accountInformation(),
    );
  }


  Widget _accountInformation() {



    return  Container(
      margin: EdgeInsets.only(left: 10, right: 10,top: 20,bottom: 20),
      width: Get.width,
      decoration: BoxDecoration(
          color: AppConstant.myMainColor(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(20, 20),
            topRight: Radius.elliptical(20, 20),
            bottomLeft: Radius.elliptical(20, 20),
            bottomRight: Radius.elliptical(20, 20),
          )),
      child: Card(

        color: Color(0xfff1f1f1),
        margin: EdgeInsets.only(top: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          width: Get.size.width,
          margin: EdgeInsets.only(top: 10, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10,top: 15,bottom: 20),
                child: Text('How to use?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18
                  ),
                ),
              ),

              Divider(height: 1,),
              Container(
                // color: Colors.yellowAccent,
                height: Get.size.height/2,
                width: Get.size.width,
                child: Obx(()=>ListView.builder(
                  itemCount: _controller.tutorialData.value.tutorialModel?.length??0,
                  itemBuilder: (context, index) => expandable(index),
                )),
              ),


            ],
          ),

        ),
      ),
    );
  }

  Widget html(String d){

    return Html(

      data: d,
      // style: {'title':Style},
    );
  }



  Widget expandable(int index){

    return ExpansionTile(

      title: Text(_controller.tutorialData.value.tutorialModel?[index].title??'Title', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
      // leading: _con.screenDrawerIcon[position],
      collapsedTextColor: AppConstant.mySecondaryColor(),
      expandedAlignment: Alignment.center,
      iconColor: AppConstant.mySecondaryColor(),
      textColor: AppConstant.myMainColor(),
      children: [

        Container(
          height: Get.size.height/2,
          width: Get.size.width,
          // color: Colors.yellow,
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: html(_controller.tutorialData.value.tutorialModel?[index].content??'No Data found'),
          ),
        )



      ],

    );
  }
}
