import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/LuckyWheel.dart';

class BreakfastPage extends StatefulWidget {
  const BreakfastPage({super.key});

  @override
  State<BreakfastPage> createState() => _BreakfestPageState();
}

class _BreakfestPageState extends State<BreakfastPage> {
  final List BreakfastList = [
    "m記",
    "茶記",
    "大家樂",
    "唐記包點",
    "太興",
    "KFC"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        body: LuckyWheel(FoodList: BreakfastList)
        );
      
  }
}
