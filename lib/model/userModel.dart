class UserModel {
  int id;
  String email;

  UserModel(this.id, this.email);

  factory UserModel.fromJson(dynamic json) {
    return UserModel(json['id'] as int, json['email'] as String);
  }
}
