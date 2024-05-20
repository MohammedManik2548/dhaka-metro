import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

import 'forgot_client_id_controller.dart';
class ForgotClientId extends StatelessWidget {
  static const routeName='/forgot_clientId_screen';
  ForgotPassController _controller = Get.put(ForgotPassController());




  @override
  Widget build(BuildContext context) {



    return  Scaffold(
            appBar:  AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white, //change your color here
              ),
              // shape: ShapeBorder(
              //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              //
              // ),
              backgroundColor: AppConstant.myMainColor(),
              // backgroundColor: AppConstant.myMainColor(),
              title: const Text('FORGOT PASSWORD',
                style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: AppConstant.scaffoldColor(),
            body: Container(

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
                              key: _controller.loginFormKey,
                              child: Column(
                                children: [
                                  SizedBox(height: 30,),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, bottom: 20),
                                    child: Text(
                                      "FORGOT PASSWORD",
                                      style: TextStyle(
                                          color: AppConstant.mySecondaryColor(),
                                          fontFamily: "",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),
                                    ),
                                  ),


                                 // _mobileField(),
                                  _emailField(),


                                  ///login button
                                  ElevatedButton(


                                    onPressed: () {
                                      if(_controller.loginFormKey.currentState!.validate()){
                                        _controller.forgotClientId();
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(180))),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        color: AppConstant.myMainColor(),
                                          // gradient: LinearGradient(
                                          //     colors: [AppConstant.myMainColor(), Colors.black]),
                                          borderRadius:
                                          BorderRadius.circular(180)),
                                      child: Container(
                                        width: 70 / 100 * Get.size.width,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Send',
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
                          // Container(
                          //   // margin: EdgeInsets.only(bottom: 20),
                          //   height: 50,
                          // ),
                        ],
                      ),

                    ),
                  )),
            )


        )

    ;
  }

  Widget _mobileField() {
    return Container(
      height: 70,
      margin: EdgeInsets.only(left: 20, right: 20 ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 14),
        cursorColor: AppConstant.mySecondaryColor(),
        controller: _controller.mobileNoController,
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
          hintText: 'Mobile No.',
          labelStyle: TextStyle(fontSize: 14 ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppConstant.mySecondaryColor(), width: 1.0 ),
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.phone_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
          contentPadding: EdgeInsets.only(top: 0, left: 5),
          // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),

        ),

        validator: (v){
          if (v!.isEmpty)
            return "Mobile No. is required.";

          return null;
        },
      ),
    );
  }


  Widget _emailField() {
    return Column(
      children: [
        Container(

          // height: 70,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Text(' *', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),),
              Text('Investor ID'),
            ],
          ),
        ),
        SizedBox(height: 2),
        Container(
          height: 70,
          margin: EdgeInsets.only(left: 20, right: 20 ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 14),
            cursorColor: AppConstant.mySecondaryColor(),
            controller: _controller.emailController,
            decoration: InputDecoration(
              prefixText: 'AIMS-',
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
              hintText: 'Investor ID',
              labelStyle: TextStyle(fontSize: 14 ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.mySecondaryColor(), width: 1.0 ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
              contentPadding: EdgeInsets.only(top: 0, left: 5),
              // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),

            ),

            validator: (v){
              if (v!.isEmpty)
                return "Investor ID is required.";

              return null;
            },
          ),
        ),
      ],
    );
  }

}
