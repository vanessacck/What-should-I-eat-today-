import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/LuckyWheel.dart';

class TeaPage extends StatefulWidget {
  const TeaPage({super.key});

  @override
  State<TeaPage> createState() => _TeaPageState();
}

class _TeaPageState extends State<TeaPage> {
  final List TeaList = [
    "媽咪雞蛋仔",
    "地茂館",
    "陳茶館",
    "金滿堂",
    "豬隊友"
  ];

  @override
  Widget build(BuildContext context) {
    return LuckyWheel(FoodList: TeaList);
  }
}
