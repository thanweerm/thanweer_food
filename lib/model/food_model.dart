// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'food_model.g.dart';

@JsonSerializable()
class Welcome {
  Welcome({
    this.tableMenuList,
  });
  @JsonKey(name: 'table_menu_list')
  List<TableMenuList>? tableMenuList;
  factory Welcome.fromJson(Map<String, dynamic> json) =>
      _$WelcomeFromJson(json);

  Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}

@JsonSerializable()
class TableMenuList {
  TableMenuList({
    this.menuCategory,
    this.menuCategoryId,
    this.menuCategoryImage,
    this.nexturl,
    this.categoryDishes,
  });
  @JsonKey(name: 'menu_category')
  String? menuCategory;
  @JsonKey(name: 'menu_category_id')
  String? menuCategoryId;
  @JsonKey(name: 'menu_category_image')
  String? menuCategoryImage;

  String? nexturl;
  @JsonKey(name: 'category_dishes')
  List<CategoryDish>? categoryDishes;

  factory TableMenuList.fromJson(Map<String, dynamic> json) =>
      _$TableMenuListFromJson(json);

  Map<String, dynamic> toJson() => _$TableMenuListToJson(this);
}

@JsonSerializable()
class AddonCat {
  AddonCat({
    this.addonCategory,
    this.addonCategoryId,
    this.addonSelection,
    this.nexturl,
    this.addons,
  });
  @JsonKey(name: 'addon_category')
  String? addonCategory;
  @JsonKey(name: 'addon_category_id')
  String? addonCategoryId;
  @JsonKey(name: 'addon_selection')
  int? addonSelection;
  String? nexturl;
  List<CategoryDish>? addons;
  factory AddonCat.fromJson(Map<String, dynamic> json) =>
      _$AddonCatFromJson(json);

  Map<String, dynamic> toJson() => _$AddonCatToJson(this);
}

@JsonSerializable()
class CategoryDish {
  CategoryDish({
    this.dishId,
    this.dishName,
    this.dishPrice,
    this.dishImage,
    this.dishCurrency,
    this.dishCalories,
    this.dishDescription,
    this.dishAvailability,
    this.dishType,
    this.nexturl,
    this.addonCat,
  });
  @JsonKey(name: 'dish_id')
  String? dishId;
  @JsonKey(name: 'dish_name')
  String? dishName;
  @JsonKey(name: 'dish_price')
  double? dishPrice;
  @JsonKey(name: 'dish_image')
  String? dishImage;
  @JsonKey(name: 'dish_currency')
  DishCurrency? dishCurrency;
  @JsonKey(name: 'dish_calories')
  double? dishCalories;
  @JsonKey(name: 'dish_description')
  String? dishDescription;
  @JsonKey(name: 'dish_availability')
  bool? dishAvailability;
  @JsonKey(name: 'dish_type')
  int? dishType;

  String? nexturl;
  List<AddonCat>? addonCat;

  factory CategoryDish.fromJson(Map<String, dynamic> json) =>
      _$CategoryDishFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDishToJson(this);
}

enum DishCurrency { SAR }

final dishCurrencyValues = EnumValues({"SAR": DishCurrency.SAR});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
