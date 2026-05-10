import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/LuckyWheel.dart';
import 'package:my_first_mobile_app/FoodDatabase.dart';

class TeaPage extends StatefulWidget {
  const TeaPage({super.key});

  @override
  State<TeaPage> createState() => _TeaPageState();
}

class _TeaPageState extends State<TeaPage> {

  @override
  Widget build(BuildContext context) {
    return LuckyWheel(FoodList: Fooddatabase.allFoodData[2]);
  }
}
