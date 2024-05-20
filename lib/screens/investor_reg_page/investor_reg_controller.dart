
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter/material.dart';

class InvestorRegController extends GetxController{

  var etCInvestorName=TextEditingController();
  var etCFundName=TextEditingController();
  // var selectedFundId='0';
  var etCRegistrationNo=TextEditingController();
  var etCPurchaseDate=TextEditingController();

  var etCPurchasePrice=TextEditingController();
  var etCNoOfUnits=TextEditingController();
  var etCTotalPurchaseAmount=TextEditingController();


  var etCPaymentType=TextEditingController();
  var etCDepositInstrumentNo=TextEditingController();
  var etCBankName=TextEditingController();
  var selectedBankId='';
  var etCBranchName=TextEditingController();
  var selectedBranchId='';
  var etCDepositDate=TextEditingController();
  var etCDoc=TextEditingController();
  // File file = File('');

  // var investor_code=''.obs;
  var selectedMobileNo='0';
  var fundId='0'.obs;
  var isFundNameIsActive=true.obs;
  var isREGNameIsActive=true.obs;
  var isBranchIsActive=true.obs;

}