import 'dart:convert';

import 'package:foodapp/model/food_model.dart';
import 'package:http/http.dart';

class FoodApiServices {
  var url = 'https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad';
  Future<Welcome> getFoodData() async {
    final response = await get(Uri.parse(url));

    final fooditems = Welcome.fromJson(json.decode(response.body)[0]);
    print(fooditems.tableMenuList![0].categoryDishes![0].dishAvailability);
    return fooditems;
  }
}
