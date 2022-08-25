import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/controler/food_controller.dart';

import 'package:foodapp/services/food_api_services.dart';
import 'package:foodapp/widgets/food_list.dart';
import 'package:get/get.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class FoodItems extends StatefulWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  State<FoodItems> createState() => _FoodItemsState();
}

class _FoodItemsState extends State<FoodItems>
    with SingleTickerProviderStateMixin {
  FoodController foodController = Get.put(FoodController());
  late final foodItems;
  FoodApiServices foodApiServices = FoodApiServices();

  @override
  void initState() {
    foodController.fetchData();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (foodController.isloading.value) {
        return Center(child: CircularProgressIndicator());
      }
      return DefaultTabController(
        length: foodController.welcome!.tableMenuList!.length,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  FontAwesomeIcons.cartShopping,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(FirebaseAuth
                            .instance.currentUser!.photoURL
                            .toString()),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(FirebaseAuth.instance.currentUser!.displayName
                          .toString()),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    await GoogleSignIn().signOut();
                  },
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: TabBar(
                  labelColor: Colors.red,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: [
                    Text(foodController.welcome!.tableMenuList![0].menuCategory
                        .toString()),
                    Text(foodController.welcome!.tableMenuList![1].menuCategory
                        .toString()),
                    Text(foodController.welcome!.tableMenuList![2].menuCategory
                        .toString()),
                    Text(foodController.welcome!.tableMenuList![3].menuCategory
                        .toString()),
                    Text(foodController.welcome!.tableMenuList![4].menuCategory
                        .toString()),
                    Text(foodController.welcome!.tableMenuList![5].menuCategory
                        .toString()),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    FoodList(
                      foodController: foodController,
                      ind: 0,
                    ),
                    FoodList(
                      foodController: foodController,
                      ind: 1,
                    ),
                    FoodList(
                      foodController: foodController,
                      ind: 2,
                    ),
                    FoodList(
                      foodController: foodController,
                      ind: 3,
                    ),
                    FoodList(
                      foodController: foodController,
                      ind: 4,
                    ),
                    FoodList(
                      foodController: foodController,
                      ind: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
