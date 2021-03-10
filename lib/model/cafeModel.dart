import 'FoodModel.dart';
import 'drinkModel.dart';

class CafeModel {
  String name;
  List<FoodModel> menuFoods;
  List<DrinkModel> menuDrinks;

  CafeModel(String name, List<dynamic> mf, List<dynamic> md) {
    this.name = name;
    menuFoods = List<FoodModel>.from(mf.map((fm) => FoodModel.fromJson(fm)));
    menuDrinks = List<DrinkModel>.from(md.map((dm) => DrinkModel.fromJson(dm)));
  }

  factory CafeModel.fromJson(dynamic json) {
    return CafeModel(json['name'] as String, json['menuFoods'] as List<dynamic>,
        json['menuDrinks'] as List<dynamic>);
  }
}
