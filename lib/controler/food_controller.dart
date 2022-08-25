import 'package:flutter/material.dart';
import 'package:foodapp/model/food_model.dart';
import 'package:foodapp/services/food_api_services.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  FoodApiServices foodApiServices = FoodApiServices();
  Welcome? welcome;
  RxBool isloading = true.obs;

  fetchData() async {
    isloading(true);
    welcome = await foodApiServices.getFoodData();
    isloading(false);
  }
}
