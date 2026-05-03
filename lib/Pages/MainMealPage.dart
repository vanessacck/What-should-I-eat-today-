import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/LuckyWheel.dart';


class MainMealPage extends StatefulWidget {
  const MainMealPage({super.key});

  @override
  State<MainMealPage> createState() => _MainMealPageState();
  
}

class _MainMealPageState extends State<MainMealPage> {

  final MainMealList = [
  "譚仔",
  "三哥",
  "M記",
  "壽司郎",
  "薩莉亞",
  "八方雲集",
  "茶記",
  "KFC"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        body: LuckyWheel(FoodList: MainMealList)
    );
  }
}