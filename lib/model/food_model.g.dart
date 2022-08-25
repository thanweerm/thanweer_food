// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Welcome _$WelcomeFromJson(Map<String, dynamic> json) => Welcome(
      tableMenuList: (json['table_menu_list'] as List<dynamic>?)
          ?.map((e) => TableMenuList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WelcomeToJson(Welcome instance) => <String, dynamic>{
      'table_menu_list': instance.tableMenuList,
    };

TableMenuList _$TableMenuListFromJson(Map<String, dynamic> json) =>
    TableMenuList(
      menuCategory: json['menu_category'] as String?,
      menuCategoryId: json['menu_category_id'] as String?,
      menuCategoryImage: json['menu_category_image'] as String?,
      nexturl: json['nexturl'] as String?,
      categoryDishes: (json['category_dishes'] as List<dynamic>?)
          ?.map((e) => CategoryDish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableMenuListToJson(TableMenuList instance) =>
    <String, dynamic>{
      'menu_category': instance.menuCategory,
      'menu_category_id': instance.menuCategoryId,
      'menu_category_image': instance.menuCategoryImage,
      'nexturl': instance.nexturl,
      'category_dishes': instance.categoryDishes,
    };

AddonCat _$AddonCatFromJson(Map<String, dynamic> json) => AddonCat(
      addonCategory: json['addon_category'] as String?,
      addonCategoryId: json['addon_category_id'] as String?,
      addonSelection: json['addon_selection'] as int?,
      nexturl: json['nexturl'] as String?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => CategoryDish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddonCatToJson(AddonCat instance) => <String, dynamic>{
      'addon_category': instance.addonCategory,
      'addon_category_id': instance.addonCategoryId,
      'addon_selection': instance.addonSelection,
      'nexturl': instance.nexturl,
      'addons': instance.addons,
    };

CategoryDish _$CategoryDishFromJson(Map<String, dynamic> json) => CategoryDish(
      dishId: json['dish_id'] as String?,
      dishName: json['dish_name'] as String?,
      dishPrice: (json['dish_price'] as num?)?.toDouble(),
      dishImage: json['dish_image'] as String?,
      dishCurrency:
          $enumDecodeNullable(_$DishCurrencyEnumMap, json['dish_currency']),
      dishCalories: (json['dish_calories'] as num?)?.toDouble(),
      dishDescription: json['dish_description'] as String?,
      dishAvailability: json['dish_availability'] as bool?,
      dishType: json['dish_type'] as int?,
      nexturl: json['nexturl'] as String?,
      addonCat: (json['addonCat'] as List<dynamic>?)
          ?.map((e) => AddonCat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryDishToJson(CategoryDish instance) =>
    <String, dynamic>{
      'dish_id': instance.dishId,
      'dish_name': instance.dishName,
      'dish_price': instance.dishPrice,
      'dish_image': instance.dishImage,
      'dish_currency': _$DishCurrencyEnumMap[instance.dishCurrency],
      'dish_calories': instance.dishCalories,
      'dish_description': instance.dishDescription,
      'dish_availability': instance.dishAvailability,
      'dish_type': instance.dishType,
      'nexturl': instance.nexturl,
      'addonCat': instance.addonCat,
    };

const _$DishCurrencyEnumMap = {
  DishCurrency.SAR: 'SAR',
};
