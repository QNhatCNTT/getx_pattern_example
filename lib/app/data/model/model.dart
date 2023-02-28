class MyModel {
  late int? id;
  late int? userId;
  late String? title;
  late String? body;

  MyModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory MyModel.fromJson(Map<String, dynamic> json){
      return MyModel(
        userId: json['userId'],
        id : json['id'],
        title : json['title'],
        body : json['body'],
      );
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
