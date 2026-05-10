import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/LuckyWheel.dart';
import 'package:my_first_mobile_app/FoodDatabase.dart';

class DrinkPage extends StatefulWidget {
  const DrinkPage({super.key});

  @override
  State<DrinkPage> createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {

  @override
  Widget build(BuildContext context) {
    return LuckyWheel(FoodList: Fooddatabase.allFoodData[3]);
      
  }
}
