import 'Users.dart';
import 'InvestorBankInfo.dart';

class DashboardData {
  DashboardData({
      this.status, 
      this.users, 
      this.investorBankInfo,});

  DashboardData.fromJson(dynamic json) {
    status = json['status'];
    users = json['users'] != null ? Users.fromJson(json['users']) : null;
    investorBankInfo = json['investorBankInfo'] != null ? InvestorBankInfo.fromJson(json['investorBankInfo']) : null;
  }
  int? status;
  Users? users;
  InvestorBankInfo? investorBankInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (users != null) {
      map['users'] = users?.toJson();
    }
    if (investorBankInfo != null) {
      map['investorBankInfo'] = investorBankInfo?.toJson();
    }
    return map;
  }

}