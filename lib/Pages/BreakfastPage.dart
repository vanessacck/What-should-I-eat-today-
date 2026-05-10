import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/LuckyWheel.dart';
import 'package:my_first_mobile_app/FoodDatabase.dart';

class BreakfastPage extends StatefulWidget {
  const BreakfastPage({super.key});

  @override
  State<BreakfastPage> createState() => _BreakfestPageState();
}

class _BreakfestPageState extends State<BreakfastPage> {

  @override
  Widget build(BuildContext context) {
    return  LuckyWheel(FoodList: Fooddatabase.allFoodData[1]); 
  }
}
