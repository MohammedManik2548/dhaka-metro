import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import '../../../utils/app_constent.dart';
import '../accout_verify/account_verify.dart';
import 'new_investor_account_controller.dart';
class OnlineApplicationOpeningPage extends StatelessWidget {

  static const routeName='/online_application_opening_page';

  NewAccountOPenController _controller = Get.put(NewAccountOPenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.scaffoldColor(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: AppConstant.myMainColor(),
        title: Text('New Investor Account Opening',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          padding: EdgeInsets.all(10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///Implement start
              Container(height: 40,
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                child: Text('New Investor', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: AppConstant.myMainColor(),),),
              ),
              Divider(height: 1,),
              SizedBox(height: 50,),

              _textField(context: context, title: 'Enter Your Name', isEnabled: true, required: false, textEditingController: _controller.textFieldId),
              _textField(context: context, title: 'Enter Your Mobile Number', isEnabled: true, required: false, textEditingController: _controller.textFieldPassword),
              _textField(context: context, title: 'Enter Your Email Address', isEnabled: true, required: false, textEditingController: _controller.textFieldPassword),

              SizedBox(height: 20,),
              ElevatedButton(


                onPressed: () {
                  Get.to(AccountVerifyPage());
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
                    width: Get.size.width/2,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      'SEND OTP',
                      style: TextStyle(fontSize: 15,color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );



  }
  _textField({required BuildContext context, required String title, required bool isEnabled, required bool required, required TextEditingController textEditingController}) {

    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 5),
            alignment: Alignment.centerLeft,
            height: 20,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$title', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                required==true?Text(' *', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),):SizedBox(),

              ],
            )
        ),
        Container(
          // color: Colors.redAccent,
          height: 40,
          width: Get.width,
          //margin: EdgeInsets.only(left: 20, right: 20 ),
          child: TextFormField(
            controller: textEditingController,
            enabled: isEnabled,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 14),
            cursorColor: AppConstant.mySecondaryColor(),
            // controller: _controller.textFieldEmail,
            decoration: InputDecoration(
              fillColor: isEnabled==true?Colors.white: Colors.black.withOpacity(0.1),
              filled: true,
              hintText: title,
              labelStyle: TextStyle(fontSize: 14 ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.myMainColor(), width: 0),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.mySecondaryColor().withOpacity(0.5), width: 0 ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppConstant.mySecondaryColor().withOpacity(0.5), width: 0 ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              border: OutlineInputBorder(),
              // prefixIcon: Icon(Icons.person_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
              contentPadding: EdgeInsets.only(top: 0, left: 10),
              // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),

            ),

          ),
        ),
      ],
    );

  }

}
