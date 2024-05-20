class VehicleData {
  VehicleData({
      this.portfolioid,
      this.portfolioname,});

  VehicleData.fromJson(dynamic json) {
    portfolioid = json['PORTFOLIO_ID'];
    portfolioname = json['PORTFOLIO_NAME'];
  }
  int? portfolioid;
  String? portfolioname;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PORTFOLIO_ID'] = portfolioid;
    map['PORTFOLIO_NAME'] = portfolioname;
    return map;
  }

// }


// class VehicleData {
//   VehicleData({
//     this.portfoliocode,
//     this.investorregno,
//     this.investoraccountid,
//     this.investmenttypeid,});
//
//   VehicleData.fromJson(dynamic json) {
//     portfoliocode = json['PORTFOLIO_CODE'];
//     investorregno = json['INVESTOR_REG_NO'];
//     investoraccountid = json['INVESTOR_ACCOUNT_ID'];
//     investmenttypeid = json['INVESTMENT_TYPE_ID'];
//   }
//   String? portfoliocode;
//   String? investorregno;
//   int? investoraccountid;
//   int? investmenttypeid;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['PORTFOLIO_CODE'] = portfoliocode;
//     map['INVESTOR_REG_NO'] = investorregno;
//     map['INVESTOR_ACCOUNT_ID'] = investoraccountid;
//     map['INVESTMENT_TYPE_ID'] = investmenttypeid;
//     return map;
//   }
//
 }