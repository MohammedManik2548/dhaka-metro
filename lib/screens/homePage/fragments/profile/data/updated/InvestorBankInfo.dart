class InvestorBankInfo {
  InvestorBankInfo({
      this.investmenttype, 
      this.investmenttypeid, 
      this.portfolioid, 
      this.orgid, 
      this.orgname, 
      this.orgbranchid, 
      this.branchname, 
      this.investorAccountId,
      this.bankaccountno,
      this.investorregno, 
      this.mailingaddress, 
      this.boaccountno,});

  InvestorBankInfo.fromJson(dynamic json) {
    investmenttype = json['INVESTMENT_TYPE'];
    investmenttypeid = json['INVESTMENT_TYPE_ID'];
    portfolioid = json['PORTFOLIO_ID'];
    orgid = json['ORG_ID'];
    investorAccountId = json['INVESTOR_ACCOUNT_ID'];
    orgname = json['ORG_NAME'];
    orgbranchid = json['ORG_BRANCH_ID'];
    branchname = json['BRANCH_NAME'];
    bankaccountno = json['BANK_ACCOUNT_NO'];
    investorregno = json['INVESTOR_REG_NO'];
    mailingaddress = json['MAILING_ADDRESS'];
    boaccountno = json['BO_ACCOUNT_NO'];
  }
  String? investmenttype;
  int? investmenttypeid;
  int? portfolioid;
  int? orgid;
  String? orgname;
  int? orgbranchid;
  int? investorAccountId;
  String? branchname;
  dynamic bankaccountno;
  String? investorregno;
  dynamic mailingaddress;
  String? boaccountno;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['INVESTMENT_TYPE'] = investmenttype;
    map['INVESTMENT_TYPE_ID'] = investmenttypeid;
    map['PORTFOLIO_ID'] = portfolioid;
    map['ORG_ID'] = orgid;
    map['ORG_NAME'] = orgname;
    map['ORG_BRANCH_ID'] = orgbranchid;
    map['BRANCH_NAME'] = branchname;
    map['BANK_ACCOUNT_NO'] = bankaccountno;
    map['INVESTOR_REG_NO'] = investorregno;
    map['MAILING_ADDRESS'] = mailingaddress;
    map['BO_ACCOUNT_NO'] = boaccountno;
    return map;
  }

}