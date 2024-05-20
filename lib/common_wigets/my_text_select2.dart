import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/homePage/fragments/updateProfilePage/update_profile_controller.dart';
class MyTextSelect2 extends StatelessWidget {
  TextEditingController editingController;
  bool enableOrDisable;
  String hints;
  String errorMessage;
  Icon icon;
  List<String> dataStringList;
  Function(String v)? voidCallback;






  MyTextSelect2({
    required this.editingController,
    required this.enableOrDisable,
    required this.hints,
    required this.errorMessage,
    required this.icon,
    required this.dataStringList,
    required this.voidCallback

  });

  UpdateProfileController _controller=Get.put(UpdateProfileController());


  @override
  Widget build(BuildContext context) {

    return  Container(
      width: Get.size.width,
      // alignment: Alignment.center,
      height: 50,
      // color: Colors.red,
      // margin: EdgeInsets.only(left: 10, right: 10 ),


        child: IgnorePointer(
          ignoring: enableOrDisable,
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              // backgroundColor: Colors.yellow
            ),
            child: DropdownButtonFormField<String>(


              decoration: InputDecoration(
                errorStyle: TextStyle(
                  fontSize: 9.0,
                  color: Colors.white54,

                ),
                errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              //
                focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              //   fillColor: AppConstant.scaffoldColor(),
              //   filled: true,
              //   hintText: hints,
              //   labelStyle: TextStyle(fontSize: 14 ),
              //   focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
              //       borderRadius: BorderRadius.all(Radius.circular(10))
              //   ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
              //
              //   border: OutlineInputBorder(),
              //   disabledBorder: OutlineInputBorder(
              //
              //       borderSide: BorderSide(color: Colors.grey, width: 1.0),
              //       borderRadius: BorderRadius.all(Radius.circular(10))
              //   ),
              //   prefixIcon: icon,
                contentPadding: EdgeInsets.only(top: 0, left: 5),
                // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),

              ),
              items: dataStringList
                  .map((label) => DropdownMenuItem(
                child: Text(label.toString(),style: TextStyle(fontSize: 14),),
                value: label,
              ))
                  .toList(),
              hint: Text(hints, style: TextStyle(fontSize: 14,),),
              onChanged: (value) {

                voidCallback!('$value');
                ///etControllerInvestmentStyle
                if(value=='Single Payment Investment (Non-SIP)'){
                  _controller.etControllerInvestmentStyle.text='2';
                  print('Select_single:-> ${_controller.etControllerInvestmentStyle.text}');
                }else if(value=='Systemative Investment Payment (SIP)'){
                  _controller.etControllerInvestmentStyle.text='1';
                  print('Select_systematic:-> ${_controller.etControllerInvestmentStyle.text}');
                }else{

                }


              },
              validator: (v){
                if (v==null)
                  return errorMessage;

                return null;
              },


            ),

          ),
        ),



    );
  }
}
