class InvestorAccountOpeningDate {
  InvestorAccountOpeningDate({
      this.message, 
      this.result,});

  InvestorAccountOpeningDate.fromJson(dynamic json) {
    message = json['message'];
    result = json['result'];
  }
  int? message;
  String? result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['result'] = result;
    return map;
  }

}