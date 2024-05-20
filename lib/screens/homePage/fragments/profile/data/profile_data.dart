import 'investor.dart';
import 'investor_bank_account_info.dart';
import 'investor_user.dart';
import 'nominee_info.dart';
import 'investor_account_opening_date.dart';

class ProfileData {
  ProfileData({
      this.status, 
      this.message, 
      this.investor, 
      this.investorBankAccountInfo, 
      this.investorUser, 
      this.boAccountList, 
      this.boAccountListFundName, 
      // this.nomineeInfo,
      this.boAccountRegistration, 
      this.investorAccountOpeningDate,});

  ProfileData.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    investor = json['investor'] != null ? Investor.fromJson(json['investor']) : null;
    if (json['investorBankAccountInfo'] != null) {
      investorBankAccountInfo = [];
      json['investorBankAccountInfo'].forEach((v) {
        investorBankAccountInfo?.add(InvestorBankAccountInfo.fromJson(v));
      });
    }
    investorUser = json['investorUser'] != null ? InvestorUser.fromJson(json['investorUser']) : null;
    boAccountList = json['boAccountList'] != null ? json['boAccountList'].cast<String>() : [];
    boAccountListFundName = json['boAccountListFundName'] != null ? json['boAccountListFundName'].cast<String>() : [];
    // if (json['nomineeInfo'] != null) {
    //   nomineeInfo = [];
    //   json['nomineeInfo'].forEach((v) {
    //     nomineeInfo?.add(NomineeInfo.fromJson(v));
    //   });
    // }
    boAccountRegistration = json['boAccountRegistration'] != null ? json['boAccountRegistration'].cast<String>() : [];
    investorAccountOpeningDate = json['investorAccountOpeningDate'] != null ? InvestorAccountOpeningDate.fromJson(json['investorAccountOpeningDate']) : null;
  }
  int? status;
  String? message;
  Investor? investor;
  List<InvestorBankAccountInfo>? investorBankAccountInfo;
  InvestorUser? investorUser;
  List<String>? boAccountList;
  List<String>? boAccountListFundName;
  // List<NomineeInfo>? nomineeInfo;
  List<String>? boAccountRegistration;
  InvestorAccountOpeningDate? investorAccountOpeningDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (investor != null) {
      map['investor'] = investor?.toJson();
    }
    if (investorBankAccountInfo != null) {
      map['investorBankAccountInfo'] = investorBankAccountInfo?.map((v) => v.toJson()).toList();
    }
    if (investorUser != null) {
      map['investorUser'] = investorUser?.toJson();
    }
    map['boAccountList'] = boAccountList;
    map['boAccountListFundName'] = boAccountListFundName;
    // if (nomineeInfo != null) {
    //   map['nomineeInfo'] = nomineeInfo?.map((v) => v.toJson()).toList();
    // }
    map['boAccountRegistration'] = boAccountRegistration;
    if (investorAccountOpeningDate != null) {
      map['investorAccountOpeningDate'] = investorAccountOpeningDate?.toJson();
    }
    return map;
  }

}