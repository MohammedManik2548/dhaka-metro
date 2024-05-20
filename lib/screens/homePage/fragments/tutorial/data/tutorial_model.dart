class TutorialModel {
  TutorialModel({
      // this.id,
      this.title, 
      this.content, 
      // this.link,
      // this.pageShow,
      // this.pageId,

  });

  TutorialModel.fromJson(dynamic json) {
    // id = json['id'];
    title = json['title'];
    content = json['content'];
    // link = json['link'];
    // pageShow = json['page_show'];
    // pageId = json['page_id'];
  }
  // int? id;
  String? title;
  String? content;
  // String? link;
  // String? pageShow;
  // int? pageId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    // map['id'] = id;
    map['title'] = title;
    map['content'] = content;
    // map['link'] = link;
    // map['page_show'] = pageShow;
    // map['page_id'] = pageId;
    return map;
  }

}