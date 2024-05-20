import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:dhaka_metro/common_wigets/password_field.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'change_pass_controller.dart';
class ChangePassScreen extends StatelessWidget {
  static const routeName='/change_pass_screen';
  ChangePassController _controller = Get.put(ChangePassController());




  @override
  Widget build(BuildContext context) {



    return  Scaffold(
          // appBar:  NewGradientAppBar(
          //   // shape: ShapeBorder(
          //   //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
          //   //
          //   // ),
          //   gradient: LinearGradient(colors: [Colors.black,AppConstant.myMainColor()]),
          //   // backgroundColor: AppConstant.myMainColor(),
          //   title: Text('Change Password'),
          // ),
            backgroundColor: AppConstant.scaffoldColor(),
            body: Container(
              margin: EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 40),
              decoration: BoxDecoration(
                  color: AppConstant.textColorMain(),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: SingleChildScrollView(
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Container(

                            decoration: BoxDecoration(
                                color: Colors.black12,
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: AppConstant.myMainColor().withOpacity(0.3),
                                //     spreadRadius: 5,
                                //     blurRadius: 7,
                                //     offset: Offset(0, 3), // changes position of shadow
                                //   ),
                                // ],
                                borderRadius: BorderRadius.circular(10)
                            ),
                            margin: EdgeInsets.only(left: 40, right: 40),
                            child: Form(
                              key: _controller.changePassFormKey,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, bottom: 20),
                                    child: Text(
                                      "Password Change",
                                      style: TextStyle(
                                          color: AppConstant.mySecondaryColor(),
                                          fontFamily: "",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                  ),


                                  _currentPasswordField(),
                                  _newPasswordField(),
                                  _confirmPasswordField(),


                                  ///login button
                                  ElevatedButton(


                                    onPressed: () {
                                      if(_controller.changePassFormKey.currentState!.validate()){
                                        _controller.changePassword();
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(180))),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [AppConstant.myMainColor(), AppConstant.myMainColor()]),
                                          borderRadius:
                                          BorderRadius.circular(180)),
                                      child: Container(
                                        width: 70 / 100 * Get.size.width,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'UPDATE',
                                          style: TextStyle(fontSize: 15,color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),

                                  // SizedBox(height: 10,),
                                  Container(
                                    color: Colors.yellow,
                                    // height: 10,
                                    margin: EdgeInsets.only(top: 20, bottom: 20),

                                  ),




                                ],
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(bottom: 20),
                            height: 50,
                          ),
                        ],
                      ),

                    ),
                  )),
            )


        );
  }

  Widget _currentPasswordField() {
    return Column(
      children: [
        Container(

          // height: 70,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Text('Current Password'),
              Text(' *', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),),

            ],
          ),
        ),
        SizedBox(height: 2),
        Container(

          height: 70,
          margin: EdgeInsets.only(left: 20, right: 20 ),
          child: Obx(()=>TextFormField(




            obscureText: !_controller.isCurrentPasswordShow.value,
            style: TextStyle(fontSize: 14),
            cursorColor: AppConstant.mySecondaryColor(),
            controller: _controller.tEControllerCurrentPass,

            decoration: InputDecoration(

              errorStyle: TextStyle(
                fontSize: 11.0,
                color: Colors.red,

              ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Current Password',
              labelStyle: TextStyle(fontSize: 14),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.mySecondaryColor(), width: 1.0 ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
              contentPadding: EdgeInsets.only(top: 0, left: 25),
              // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
              suffixIcon: IconButton(
                icon: Icon(!_controller.isCurrentPasswordShow.value?Icons.visibility_off:Icons.visibility, size: 18, color:AppConstant.mySecondaryColor() ,),
                onPressed: () {
                  _controller.isCurrentPasswordShow.value = !_controller.isCurrentPasswordShow.value;
                },
              ),

            ),

            validator: (v){
              if (v!.isEmpty){
                return "Current Password is required.";
              }

              // return null;
            },
          )),
        ),
      ],
    );
  }
  Widget _newPasswordField() {
    return Column(
      children: [
        Container(

          // height: 70,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Text('New Password'),
              Text(' *', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),),

            ],
          ),
        ),
        SizedBox(height: 2),
        Container(

          height: 70,
          margin: EdgeInsets.only(left: 20, right: 20 ),
          child: Obx(()=>TextFormField(




            obscureText: !_controller.isNewPasswordShow.value,
            style: TextStyle(fontSize: 14),
            cursorColor: AppConstant.mySecondaryColor(),
            controller: _controller.tEControllerNewPass,

            decoration: InputDecoration(

              errorStyle: TextStyle(
                fontSize: 11.0,
                color: Colors.red,

              ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: 'New Password',
              labelStyle: TextStyle(fontSize: 14),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.mySecondaryColor(), width: 1.0 ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
              contentPadding: EdgeInsets.only(top: 0, left: 25),
              // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
              suffixIcon: IconButton(
                icon: Icon(!_controller.isNewPasswordShow.value?Icons.visibility_off:Icons.visibility, size: 18, color:AppConstant.mySecondaryColor() ,),
                onPressed: () {
                  _controller.isNewPasswordShow.value = !_controller.isNewPasswordShow.value;
                },
              ),

            ),

            validator: (v){
              if (v!.isEmpty)
                return "New Password is required.";

              return null;
            },
          )),
        ),
      ],
    );
  }
  Widget _confirmPasswordField() {
    return Column(
      children: [
        Container(

          // height: 70,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Text('Confirm Password'),
              Text(' *', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),),

            ],
          ),
        ),
        SizedBox(height: 2),
        Container(

          height: 70,
          margin: EdgeInsets.only(left: 20, right: 20 ),
          child: Obx(()=>TextFormField(




            obscureText: !_controller.isConfirmPasswordShow.value,
            style: TextStyle(fontSize: 14),
            cursorColor: AppConstant.mySecondaryColor(),
            controller: _controller.tEControllerConfirmPass,

            decoration: InputDecoration(

              errorStyle: TextStyle(
                fontSize: 11.0,
                color: Colors.red,

              ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Confirm Password',
              labelStyle: TextStyle(fontSize: 14),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.mySecondaryColor(), width: 1.0 ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
              contentPadding: EdgeInsets.only(top: 0, left: 25),
              // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
              suffixIcon: IconButton(
                icon: Icon(!_controller.isConfirmPasswordShow.value?Icons.visibility_off:Icons.visibility, size: 18, color:AppConstant.mySecondaryColor() ,),
                onPressed: () {
                  _controller.isConfirmPasswordShow.value = !_controller.isConfirmPasswordShow.value;
                },
              ),

            ),

            validator: (v){
              if (v!.isEmpty)
                return "Confirm Password is required.";

              return null;
            },
          )),
        ),
      ],
    );
  }


}
