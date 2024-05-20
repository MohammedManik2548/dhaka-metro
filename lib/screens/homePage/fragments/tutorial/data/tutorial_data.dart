import 'tutorial_model.dart';

class TutorialData {
  TutorialData({
      // this.status,
      // this.message,
      this.title, 
      this.tutorialModel,});

  TutorialData.fromJson(dynamic json) {
    // status = json['status'];
    // message = json['message'];
    title = json['title'];
    if (json['tutorialModel'] != null) {
      tutorialModel = [];
      json['tutorialModel'].forEach((v) {
        tutorialModel?.add(TutorialModel.fromJson(v));
      });
    }
  }
  // int? status;
  // String? message;
  String? title;
  List<TutorialModel>? tutorialModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    // map['status'] = status;
    // map['message'] = message;
    map['title'] = title;
    if (tutorialModel != null) {
      map['tutorialModel'] = tutorialModel?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}