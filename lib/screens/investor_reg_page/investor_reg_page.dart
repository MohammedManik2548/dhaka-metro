import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_wigets/form_header.dart';
import '../../common_wigets/my_text_field.dart';
import '../../common_wigets/my_text_select.dart';
import '../../utils/app_constent.dart';
import 'investor_reg_controller.dart';

class InvestorRegPage extends StatelessWidget {
  InvestorRegController _controller = Get.put(InvestorRegController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.centerRight,
      margin: EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 40),
      decoration: BoxDecoration(
          color: AppConstant.textColorMain(),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: MediaQuery.of(context).size.width,

      height: Get.height,
      child: SingleChildScrollView(
        child: Form(
          // key: _controller.formKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Container(

                margin: EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                // color: Colors.yellow,
                child: Text("INVESTOR REGISTRATION FORM".toUpperCase(), style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 18, fontWeight: FontWeight.bold),),
                height: 60,),
              Divider(height: 1,),




              FormHeader(title: "Name of Institution",),
              MyTextField(isRequired: true,editingController: _controller.etCInvestorName, enableOrDisable: false, hints: '', errorMessage: 'Name is required', icon:Icon(FontAwesomeIcons.user,color: AppConstant.mySecondaryColor(),size: 15,), inputType: TextInputType.text,),


              FormHeader(title: "Type of Institution",),
              // _selectFundName(context),
              MyTextSelect(editingController: _controller.etCFundName, enableOrDisable: false, hints: 'Local Company', errorMessage: 'Select fund name', icon:Icon(FontAwesomeIcons.university,color: AppConstant.mySecondaryColor(),size: 15,)),

              // FormHeader(title: "Demo",),
              // TitleDataWidget(title: 'Mutual Fund',data: selectMutualFund(context), dataAlignment: 'left',titleAlignment: 'dd',),

              FormHeader(title: "Institution Short Name",),
              MyTextField(isRequired: true,editingController: _controller.etCInvestorName, enableOrDisable: false, hints: 'Name In Short Form', errorMessage: 'Name is required', icon:Icon(FontAwesomeIcons.user,color: AppConstant.mySecondaryColor(),size: 15,), inputType: TextInputType.text,),

              // _selectRegistrationNo(context),

              FormHeader(title: "Company Registration No.",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCPurchaseDate, enableOrDisable: false, hints: 'Input Reg. No', errorMessage: 'Purchase date is required', icon:Icon(FontAwesomeIcons.calendarDay,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "TIN No.",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCPurchasePrice, enableOrDisable: false, hints: 'Input Tin Number', errorMessage: 'Price is required', icon:Icon(FontAwesomeIcons.liraSign,color: AppConstant.mySecondaryColor(),size: 15,)),


              FormHeader(title: "Telephone Office",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCPurchasePrice, enableOrDisable: false, hints: 'Input Office Telephone Office', errorMessage: 'Price is required', icon:Icon(FontAwesomeIcons.liraSign,color: AppConstant.mySecondaryColor(),size: 15,)),

              // _getNoUnit(context),


              FormHeader(title: "Fax",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Input Fax Number', errorMessage: 'Total amount is required', icon:Icon(FontAwesomeIcons.dollarSign,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Mode of Operation",),
              // _selectFundName(context),
              MyTextSelect(editingController: _controller.etCFundName, enableOrDisable: false, hints: 'Jointly', errorMessage: 'Select fund name', icon:Icon(FontAwesomeIcons.university,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Email",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Input Valid Email Address', errorMessage: 'Total amount is required', icon:Icon(FontAwesomeIcons.dollarSign,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Mobile",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Input 11 Digit Mobile Number', errorMessage: 'Total amount is required', icon:Icon(FontAwesomeIcons.dollarSign,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Mailing Address",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Input Valid Postal Address', errorMessage: 'Total amount is required', icon:Icon(FontAwesomeIcons.dollarSign,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Authorized Person Name",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Authorized Person Name', errorMessage: 'Total amount is required', icon:Icon(FontAwesomeIcons.dollarSign,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Authorized Person Designation",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Authorized Person Designation', errorMessage: 'Total amount is required', icon:Icon(FontAwesomeIcons.dollarSign,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Authorized Person Photo",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Authorized Person Photo', errorMessage: 'Authorized Person Photo', icon:Icon(FontAwesomeIcons.fileAlt,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Authorized Person Signature",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Authorized Person Signature', errorMessage: 'Authorized Person Photo', icon:Icon(FontAwesomeIcons.fileAlt,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "CEO Name",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Input CEO Full Name', errorMessage: 'Authorized Person Photo', icon:Icon(FontAwesomeIcons.fileAlt,color: AppConstant.mySecondaryColor(),size: 15,)),

              FormHeader(title: "Photograph of CEO/MD",),
              MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCTotalPurchaseAmount, enableOrDisable: false, hints: 'Photograph of CEO/MD', errorMessage: 'Authorized Person Photo', icon:Icon(FontAwesomeIcons.fileAlt,color: AppConstant.mySecondaryColor(),size: 15,)),


              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                height: 10,),
              // Divider(height: 1,),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                child: Text("Payment Information", style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 18, fontWeight: FontWeight.bold),),
                height: 40,),

              Divider(height: 1,),


              FormHeader(title: 'Payment Type',),
              // _selectPaymentType(context),



              FormHeader(title: 'Deposited Instrument No.',),
              // MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCDepositInstrumentNo, enableOrDisable: true, hints: '11245675566', errorMessage: 'Instrument No. is required', icon:Icon(FontAwesomeIcons.sortNumericDown,color: AppConstant.mySecondaryColor(),size: 15,)),


              FormHeader(title: 'Required Document',),
              // InkWell(
              //     onTap: (){
              //       print('File Upload here');
              //       _controller.openFilePicker();
              //     },
              //     child: MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCDoc, enableOrDisable: false, hints: 'Select a file', errorMessage: 'file is required', icon:Icon(FontAwesomeIcons.fileAlt,color: AppConstant.mySecondaryColor(),size: 15,))),

              FormHeader(title: 'Bank Name',),
              // _selectBankName(context),



              FormHeader(title: 'Branch Name',),
              // _selectBranch(context),

              FormHeader(title: 'Date of the Deposited Instrument',),
              // InkWell(
              //     onTap: (){
              //
              //       Get.bottomSheet(DatePickerBottomSheet(title: 'Select a deposited date',editingController: _controller.etCDepositDate,));
              //
              //     },
              //     child: MyTextField(isRequired: true,inputType: TextInputType.text,editingController: _controller.etCDepositDate, enableOrDisable: false, hints: 'Select a date', errorMessage: 'Date is required', icon:Icon(FontAwesomeIcons.calendarDay,color: AppConstant.mySecondaryColor(),size: 15,))),

              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                height: 20,


              ),



              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                height: 40,
                // child:  ElevatedButton(
                //
                //
                //   onPressed: () {
                //
                //     if(_controller.formKey.currentState!.validate()){
                //       _controller.submitPurchase();
                //     }
                //
                //     // _controller.submitPurchase();
                //   },
                //   style: ElevatedButton.styleFrom(
                //       padding: EdgeInsets.zero,
                //       shape: RoundedRectangleBorder(
                //           borderRadius:
                //           BorderRadius.circular(180))),
                //   child: Ink(
                //     decoration: BoxDecoration(
                //         gradient: LinearGradient(
                //             colors: [AppConstant.myMainColor(), Colors.black]),
                //         borderRadius:
                //         BorderRadius.circular(180)),
                //     child: Container(
                //       width: 70 / 100 * Get.size.width,
                //       height: 40,
                //       alignment: Alignment.center,
                //       child: Text(
                //         'Purchase',
                //         style: TextStyle(fontSize: 15),
                //       ),
                //     ),
                //   ),
                // ),

              ),

              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                height: 20,


              ),

              Obx(()=>Container(
                margin: EdgeInsets.all(10),
                width: Get.size.width,
                child: ExpansionTile(

                  title: Text(
                    '',
                    // _controller.basicPurchaseData.value.tutorialModel?[0].title??'Title',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  // leading: _con.screenDrawerIcon[position],
                  collapsedTextColor: AppConstant.mySecondaryColor(),
                  expandedAlignment: Alignment.center,
                  iconColor: AppConstant.mySecondaryColor(),
                  textColor: AppConstant.myMainColor(),
                  children: [

                    // Container(
                    //   height: Get.size.height/2,
                    //   width: Get.size.width,
                    //   // color: Colors.yellow,
                    //   child:SingleChildScrollView(
                    //     scrollDirection: Axis.vertical,
                    //     child: html(_controller.basicPurchaseData.value.tutorialModel?[0].content??'No Data found'),
                    //   ),
                    // )



                  ],

                ),
              ),
              ),




            ],
          ),
        ),
      ),

    );
  }
}

