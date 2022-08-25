import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/model/food_model.dart';
import 'package:foodapp/screens/login_screen.dart';
import 'package:foodapp/services/food_api_services.dart';
import 'package:foodapp/widgets/food_items.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return FoodItems();
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Something Went Wrong'),
          );
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
