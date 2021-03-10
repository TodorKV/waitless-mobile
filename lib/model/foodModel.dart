import 'dart:core';
import 'reviewModel.dart';

class FoodModel {
  int id;
  String name;
  List<ReviewModel> reviewModels;

  FoodModel(int id, String name, List<dynamic> rm) {
    this.id = id;
    this.name = name;
    reviewModels =
        List<ReviewModel>.from(rm.map((elem) => ReviewModel.fromJson(elem)));
  }

  factory FoodModel.fromJson(dynamic json) {
    return FoodModel(json['id'] as int, json['name'] as String,
        json['reviewModels'] as List<dynamic>);
  }
}
