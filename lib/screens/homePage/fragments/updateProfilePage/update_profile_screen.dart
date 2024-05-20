import 'package:dhaka_metro/common_wigets/dropdown_search_bank.dart';
import 'package:dhaka_metro/common_wigets/dropdown_search_branch.dart';
import 'package:dhaka_metro/screens/homePage/fragments/updateProfilePage/model/VehicleData.dart';
import 'package:dhaka_metro/screens/homePage/fragments/updateProfilePage/update_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
//import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:dhaka_metro/common_wigets/my_text_field2.dart';
import 'package:dhaka_metro/common_wigets/my_text_select2.dart';
import 'package:dhaka_metro/common_wigets/title_data_widget.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

import 'model/bank_list.dart';
import 'model/fund_list.dart';
class UpdateProfileScreen extends StatelessWidget {
  static const routeName='/update_profile_screen';

  UpdateProfileController _controller=Get.put(UpdateProfileController());
  @override
  Widget build(BuildContext context) {
    // _controller.getBasicUpdateData();
    // _controller.getProfileData();
    // _controller.getBankName();
    // _controller.getVehicle();
    return Scaffold(
      backgroundColor: AppConstant.scaffoldColor(),
      // appBar: NewGradientAppBar(
      //   // shape: ShapeBorder(
      //   //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
      //   //
      //   // ),
      //   gradient: LinearGradient(colors: [Colors.black,AppConstant.myMainColor()]),
      //   // backgroundColor: AppConstant.myMainColor(),
      //   title: Text('Update Profile'),
      // ),
      body: Stack(
        children: [
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
                color: AppConstant.myMainColor(),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))
            ),
            margin: EdgeInsets.only(top: 5, right: 10, left: 10),

            height: 15,
          ),
          Container(
            // alignment: Alignment.centerRight,
            margin: EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 40),
            decoration: BoxDecoration(
                color: AppConstant.textColorMain(),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            width: MediaQuery.of(context).size.width,

            height: Get.height,
            child: SingleChildScrollView(
              child:  Form(
                key: _controller.formKey,
                child: Column(
                  children: [
                    Container(

                      margin: EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.center,
                      // color: Colors.yellow,
                      child: Text("Update profile".toUpperCase(), style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 18, fontWeight: FontWeight.bold),),
                      height: 60,),
                    // customDivider(1.0),
                    Divider(height: 1,),

                    Container(
                      margin: EdgeInsets.only(top: 10, ),
                      // color: AppConstant.myMainColor(),
                      child: Column(
                        children: [],
                      ),
                    ),


                  ],
                ),
              ),

            ),
          ),


        ],
      ),
    );
  }


  Widget _customDivider(double height){
    return Container(width: Get.size.width, height: 3, color: AppConstant.scaffoldColor(),margin: EdgeInsets.only(left: 10, right: 10),);
  }
  // Widget _selectVehicle(BuildContext context){
  //
  //   return Container(
  //     width: Get.size.width,
  //     // alignment: Alignment.center,
  //     height: 50,
  //     // color: Colors.red,
  //     // margin: EdgeInsets.only(left: 10, right: 10 ),
  //
  //
  //     child: Obx(()=>IgnorePointer(
  //       ignoring: _controller.vehicleIsLoaded.value,
  //       child: Theme(
  //         data: Theme.of(context).copyWith(
  //           canvasColor: Colors.white,
  //           // backgroundColor: Colors.yellow
  //         ),
  //         child: DropdownButtonFormField<VehicleData>(
  //           //value: _controller.vehicleList !=null? _controller.vehicleList![0].portfolioname:null,
  //           decoration: InputDecoration(
  //             errorStyle: TextStyle(
  //               fontSize: 9.0,
  //               color: Colors.white54,
  //
  //             ),
  //             errorBorder: UnderlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white)),
  //             //
  //             focusedErrorBorder: UnderlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white)),
  //             //   fillColor: AppConstant.scaffoldColor(),
  //             //   filled: true,
  //             //   hintText: hints,
  //             //   labelStyle: TextStyle(fontSize: 14 ),
  //             //   focusedBorder: OutlineInputBorder(
  //             //       borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
  //             //       borderRadius: BorderRadius.all(Radius.circular(10))
  //             //   ),
  //             enabledBorder: UnderlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white)),
  //             //
  //             //   border: OutlineInputBorder(),
  //             //   disabledBorder: OutlineInputBorder(
  //             //
  //             //       borderSide: BorderSide(color: Colors.grey, width: 1.0),
  //             //       borderRadius: BorderRadius.all(Radius.circular(10))
  //             //   ),
  //             //   prefixIcon: icon,
  //             contentPadding: EdgeInsets.only(top: 0, left: 5),
  //             // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
  //
  //           ),
  //           items: _controller.vehicleList.map((VehicleData e) => DropdownMenuItem<VehicleData>(
  //               value: e,
  //               child: Text(e.portfolioname.toString(),style: TextStyle(fontSize: 14),overflow: TextOverflow.ellipsis,)
  //
  //           )).toList(),
  //           hint: Text('Select a fund name', style: TextStyle(fontSize: 14,),overflow: TextOverflow.ellipsis,),
  //           onChanged: (value) {
  //
  //             // _controller.getBranchList("${value?.id??0}");
  //             // // print(value!.name.toString());
  //             _controller.etControllerFundName.text=value?.portfolioid.toString()??'';
  //             print('TextField:->${_controller.etControllerFundName.text}');
  //             // // _controller.getPortfolioDataAfterSelect();
  //           },
  //           validator: (v){
  //             if (v==null)
  //               return 'Select Fund Name';
  //
  //             return null;
  //           },
  //
  //
  //         ),
  //
  //       ),
  //     )),
  //
  //
  //
  //   );
  // }
  // Widget _selectBankList(BuildContext context){
  //
  //   return Container(
  //     width: Get.size.width,
  //     // alignment: Alignment.center,
  //     height: 50,
  //     // color: Colors.red,
  //     // margin: EdgeInsets.only(left: 10, right: 10 ),
  //
  //
  //     child: Obx(()=>IgnorePointer(
  //       ignoring: _controller.fundIsActive.value,
  //       child: Theme(
  //         data: Theme.of(context).copyWith(
  //           canvasColor: Colors.white,
  //           // backgroundColor: Colors.yellow
  //         ),
  //
  //
  //
  //
  //         child: DropDownSearchBank2(_controller.bankList, (value) {
  //           _controller.getBranchList("${value.id??0}");
  //           // print(value!.name.toString());
  //           _controller.etControllerBankName.text=value.id.toString()??'';
  //           print(_controller.etControllerBankName.text);
  //           // _controller.getPortfolioDataAfterSelect();
  //
  //         }),
  //       ),
  //     )),
  //
  //
  //
  //   );
  // }
  // Widget _selectBranch(BuildContext context){
  //
  //   return Container(
  //     width: Get.size.width,
  //     // alignment: Alignment.center,
  //     height: 50,
  //     // color: Colors.red,
  //     // margin: EdgeInsets.only(left: 10, right: 10 ),
  //
  //
  //     child: Obx(()=>IgnorePointer(
  //       ignoring: _controller.branchIsLoaded.value,
  //       child: Theme(
  //         data: Theme.of(context).copyWith(
  //           canvasColor: Colors.white,
  //           // backgroundColor: Colors.yellow
  //         ),
  //         /*
  //         child: DropdownButtonFormField<BranchList>(
  //
  //
  //           decoration: InputDecoration(
  //             errorStyle: TextStyle(
  //               fontSize: 9.0,
  //               color: Colors.white54,
  //
  //             ),
  //             errorBorder: UnderlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white)),
  //             //
  //             focusedErrorBorder: UnderlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white)),
  //             //   fillColor: AppConstant.scaffoldColor(),
  //             //   filled: true,
  //             //   hintText: hints,
  //             //   labelStyle: TextStyle(fontSize: 14 ),
  //             //   focusedBorder: OutlineInputBorder(
  //             //       borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
  //             //       borderRadius: BorderRadius.all(Radius.circular(10))
  //             //   ),
  //             enabledBorder: UnderlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white)),
  //             //
  //             //   border: OutlineInputBorder(),
  //             //   disabledBorder: OutlineInputBorder(
  //             //
  //             //       borderSide: BorderSide(color: Colors.grey, width: 1.0),
  //             //       borderRadius: BorderRadius.all(Radius.circular(10))
  //             //   ),
  //             //   prefixIcon: icon,
  //             contentPadding: EdgeInsets.only(top: 0, left: 5),
  //             // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
  //
  //           ),
  //           items: _controller.branchList.map((BranchList e) {
  //
  //
  //
  //             return DropdownMenuItem<BranchList>(
  //                 value: e,
  //                 child: Text(e.branchname.toString(),style: TextStyle(fontSize: 10),overflow: TextOverflow.ellipsis,)
  //
  //             );
  //           }).toList(),
  //           hint: Text('Select a branch', style: TextStyle(fontSize: 14,),),
  //           onChanged: (value) {
  //
  //             _controller.etControllerBranchName.text=value?.orgbranchid.toString()??'';
  //             print('Branch_id:-> ${_controller.etControllerBranchName.text}');
  //
  //             // print(value!.regno.toString());
  //             // _controller.etControllerReg.text=value.id!;
  //             // print(_controller.etControllerReg.text);
  //
  //           },
  //           validator: (v){
  //             if (v==null)
  //               return 'Select branch name';
  //
  //             return null;
  //           },
  //
  //
  //         ),
  //
  //
  //          */
  //         child: DropDownSearchBranch2(_controller.branchList, (value) {
  //           _controller.etControllerBranchName.text='';
  //           print('Branch_id:-> ${_controller.etControllerBranchName.text}');
  //
  //           // print(value!.regno.toString());
  //           // _controller.etControllerReg.text=value.id!;
  //           // print(_controller.etControllerReg.text);
  //
  //         }),
  //       ),
  //     )),
  //
  //
  //
  //   );
  // }
}
