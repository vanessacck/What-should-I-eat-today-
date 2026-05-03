import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/LuckyWheel.dart';

class DrinkPage extends StatefulWidget {
  const DrinkPage({super.key});

  @override
  State<DrinkPage> createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  final List DrinkList = [
    "一芳",
    "天仁茗茶",
    "COMEBUYTEA",
    "貢茶",
    "功夫茶",
    "Sharetea",
    "花斑茶社",
    "再睡五分鐘"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        body: LuckyWheel(FoodList: DrinkList),
        );
      
  }
}
