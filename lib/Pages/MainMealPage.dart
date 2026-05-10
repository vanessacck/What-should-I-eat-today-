import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/LuckyWheel.dart';
import 'package:my_first_mobile_app/FoodDatabase.dart';

class MainMealPage extends StatefulWidget {
  const MainMealPage({super.key});

  @override
  State<MainMealPage> createState() => _MainMealPageState();
  
}

class _MainMealPageState extends State<MainMealPage> {

  @override
  Widget build(BuildContext context) {
    return LuckyWheel(FoodList: Fooddatabase.allFoodData[0]);

  }
}