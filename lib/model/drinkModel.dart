import 'dart:core';
import 'reviewModel.dart';

class DrinkModel {
  int id;
  String name;
  List<ReviewModel> reviewModels;

  DrinkModel(int id, String name, List<dynamic> rm) {
    this.id = id;
    this.name = name;
    reviewModels =
        List<ReviewModel>.from(rm.map((elem) => ReviewModel.fromJson(elem)));
  }

  factory DrinkModel.fromJson(dynamic json) {
    return DrinkModel(json['id'] as int, json['name'] as String,
        json['reviewModels'] as List<dynamic>);
  }
}
