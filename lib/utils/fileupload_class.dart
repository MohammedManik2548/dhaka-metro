
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

class FileUploadClass{




  static Future<FormData> formDataMaker(String appId, String fundId, String reg, String noOfUnits, File file)async{
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
    'unitAppId':appId,
    'fundId':fundId,
    'registration_no':reg,
    'noOfUnits':noOfUnits,
    'dpFile': await MultipartFile.fromFile('${file.path}',filename: '$fileName'),
    }
    );
    return formData;
  }





  static Future<FormData> purchaseFormData(

      {
        required String investor_code,
        required String fundId,
        required String registrationNo,
        required String purchasePrice,
        required String noOfUnits,
        required String totalPurchaseAmount,
        required String paymentType,
        required String depositedInstrumentNo,
        required String bankId,
        required String branchId,
        required String dateOfTheDepositedInstrument,
        required File file,


        //
        // required String investorName,
        // required String mutualFundName,
        // required String mutualFund,
        // required String purchaseDate,
        // required String bankNameValue,
        // required String bankName,
        // required String mobile_no,
      }

      )async{
    String fileName = file.path.split('/').last;
    Map<String, dynamic> data={

      'investor_code':investor_code,
      // 'fund_id':'45',
      // 'registration_no':'0100036',
      // 'purchase_price':'13.22',
      // 'no_of_units':'500',
      // 'total_purchase_amount':'6610',
      // 'payment_type':'dd',
      // 'deposited_instrument_no':'123456',
      // 'bank_id':'40',
      // 'branch_id':'190',
      // 'date_of_deposited_instrument':'05-09-2022',

      // 'investor_code':'$investor_code',
      'fund_id':'$fundId',
      'registration_no':'$registrationNo',
      'purchase_price':'$purchasePrice',
      'no_of_units':'$noOfUnits',
      'total_purchase_amount':'$totalPurchaseAmount',
      'payment_type':'$paymentType',
      'deposited_instrument_no':'$depositedInstrumentNo',
      'bank_id':'$bankId',
      'branch_id':'$branchId',
      'date_of_deposited_instrument':'$dateOfTheDepositedInstrument',
      'deposited_instrument_document':await MultipartFile.fromFile('${file.path}', filename: fileName),




      // 'investorName':'$investorName',
      // 'mutualFundName':'$mutualFundName',
      // 'mutualFund':int.parse(mutualFund),
      // 'PurchaseDate':'$purchaseDate',
      // 'bankNameValue':'$bankNameValue',
      // 'bankName':'$bankName',
      // 'mobile_no':'$mobile_no',
    };
    print('send_file_path:${file.path}');
    print('Purchase_send_Data:$data');
    /*
    investor_code: ,
    fund_id: 45,
    registration_no: 0100036,
    purchase_price: TextEditingValue(text: ┤13.22├, selection: TextSelection.invalid, composing: TextRange(start: -1, end: -1)),
    no_of_units: TextEditingValue(text: ┤500├, selection: TextSelection.collapsed(offset: 3, affinity: TextAffinity.downstream, isDirectional: false), composing: TextRange(start: -1, end: -1)),
    total_purchase_amount: 6610.0,
    payment_type: TextEditingValue(text: ┤cheque├, selection: TextSelection.invalid, composing: TextRange(start: -1, end: -1)),
    deposited_instrument_no: TextEditingValue(text: ┤11245675566├, selection: TextSelection.collapsed(offset: 11, affinity: TextAffinity.downstream, isDirectional: false), composing: TextRange(start: -1, end: -1)),
    bank_id: 40,
    ranch_id: 1237,
    date_of_deposited_instrument: 22-Sep-2022,
    deposited_instrument_document: Instance of 'MultipartFile'
     */

    FormData formData = FormData.fromMap(data);
    return formData;
  }





  static Future<FormData> surrenderFormData({
    required File file,
    required String investorCode,
    required String fundId,
    required String registrationNo,
    required String totalHoldingUnit,
    required String availableHoldingUnit,
    required String withoutExitLoadUnits,
    required String withExitLoadUnits,
    required String surrenderPrice,
    required String regularSurrenderAmount,
    required String exitLoadSurrenderAmount,
    required String totalValueOfSurrendered,
    required String noOfUnitsToSurrender,

  })async{

    String fileName = file.path.split('/').last;
    var data={

      'investor_code': investorCode,
      // 'fund_id':'46',
      // 'registration_no':'02100019',
      // 'totalHoldingUnit':'8705',
      // 'availableHoldingUnit':'8288',
      // 'withoutExitLoadUnits':'10705',
      // 'withExitLoadUnits':'0',
      // 'surrenderPrice':'12.10',
      // 'regularSurrenderAmount':'0',
      // 'exitLoadSurrenderAmount':'0',
      // 'totalValueOfSurrendered':'0',
      // 'noOfUnitsToSurrender':'500',

      // 'investorCode':'$investorCode',
      'fund_id':'$fundId',
      'registration_no':'$registrationNo',
      'totalHoldingUnit':'$totalHoldingUnit',
      'availableHoldingUnit':'$availableHoldingUnit',
      'withoutExitLoadUnits':'$withoutExitLoadUnits',
      'withExitLoadUnits':'$withExitLoadUnits',
      'surrenderPrice':'$surrenderPrice',
      'regularSurrenderAmount':'$regularSurrenderAmount',
      'exitLoadSurrenderAmount':'$exitLoadSurrenderAmount',
      'totalValueOfSurrendered':'$totalValueOfSurrendered',
      'noOfUnitsToSurrender':'$noOfUnitsToSurrender',

      'dp40file':await MultipartFile.fromFile('${file.path}',filename: '$fileName'),




      // 'SurrenderDate':AppConstant.currentTimeWithFormat(),
      // 'investorName':"$investorName",
      // 'mutualFundName':"$mutualFundName",
      // 'mutualFund':'$mutualFund',
      // 'registrationNo':'$registrationNo',
      // 'noOfTotalHoldingUnitsTotal':"$noOfTotalHoldingUnitsTotal",
      // 'noOfTotalHoldingUnits':"$noOfTotalHoldingUnits",
      // 'noOfUnitsToSurrender':'$noOfUnitsToSurrender',
      // 'investorPrice':'$investorPrice',
      // 'exitLoadSalePrice':exitLoadSalePrice,
      // 'INVESTOR_ACCOUNT_ID':investorAcId,
      // 'regularSurrenderAmount':regularSurrenderAmount,
      // 'exitLoadSurrenderAmount':exitLoadSurrenderAmount,
      // 'totalValueOfSurrendered':totalValueOfSurrendered,
      // 'mobile_no':mobileNo,
    };

    print('Surrender_send_file_path:${file.path}');
    print('Surrender_send_Data:$data');

    FormData formData = FormData.fromMap(data);
    return formData;
  }

}