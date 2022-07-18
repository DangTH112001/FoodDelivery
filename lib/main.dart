import 'package:flutter/material.dart';
import 'package:food_delivery/pages/food_details/main_food_details.dart';
import 'package:food_delivery/pages/food_details/recommended_food_detail.dart';
import 'package:food_delivery/pages/home_page/main_home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(200, 255, 255, 255),
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(body: RecommendFoodDetail()),
    );
  }
}
