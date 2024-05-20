class Users {
  Users({
      this.clientId, 
      this.investorDetailsId, 
      this.name, 
      this.mobileNo, 
      this.email, 
      this.nid, 
      this.passportNo, 
      this.passportDate, 
      this.accountType, 
      this.password, 
      this.registrationNo, 
      this.incorporationDate, 
      this.institutionName,
      this.institutionBoAccountNo,
      this.mode,
      this.createdAt,
      this.updatedAt,});

  Users.fromJson(dynamic json) {
    clientId = json['client_id'];
    investorDetailsId = json['investor_details_id'];
    name = json['name'];
    mobileNo = json['mobile_no'];
    email = json['email'];
    nid = json['nid'];
    passportNo = json['passport_no'];
    passportDate = json['passport_date'];
    accountType = json['account_type'];
    password = json['password'];
    registrationNo = json['registration_no'];
    incorporationDate = json['incorporation_date'];
    institutionName = json['institution_name'];
    institutionBoAccountNo = json['INST_BO_ACCOUNT_NO'];
    mode = json['MODE_OF_OPERATION'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  String? clientId;
  String? investorDetailsId;
  String? name;
  String? mobileNo;
  String? email;
  String? nid;
  String? passportNo;
  String? passportDate;
  String? accountType;
  String? password;
  dynamic registrationNo;
  dynamic incorporationDate;
  String? institutionName;
  String? institutionBoAccountNo;
  String? mode;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['client_id'] = clientId;
    map['investor_details_id'] = investorDetailsId;
    map['name'] = name;
    map['mobile_no'] = mobileNo;
    map['email'] = email;
    map['nid'] = nid;
    map['passport_no'] = passportNo;
    map['passport_date'] = passportDate;
    map['account_type'] = accountType;
    map['password'] = password;
    map['registration_no'] = registrationNo;
    map['incorporation_date'] = incorporationDate;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}