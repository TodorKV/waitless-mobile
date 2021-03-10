import 'userModel.dart';

class ReviewModel {
  int rid;
  String description;
  UserModel user;

  ReviewModel(int rid, String description, dynamic user) {
    this.rid = rid;
    this.description = description;
    this.user = UserModel.fromJson(user);
  }

  factory ReviewModel.fromJson(dynamic json) {
    return ReviewModel(json['rid'] as int, json['description'] as String,
        json['user'] as dynamic);
  }
}
