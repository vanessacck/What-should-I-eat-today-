import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:async';

class MainMealPage extends StatefulWidget {
  const MainMealPage({super.key});

  @override
  State<MainMealPage> createState() => _MainMealPageState();
}

class _MainMealPageState extends State<MainMealPage> {

  StreamController<int> controller = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        body: Center(
          child: SizedBox(
          height: 300,
          child: FortuneWheel(
            selected: controller.stream,
            animateFirst: false,
            items: [
              FortuneItem(child: Text('Han Solo')),
              FortuneItem(child: Text('Yoda')),
              FortuneItem(child: Text('Obi-Wan Kenobi')),            
              ],
            ),
          ),
          
          ),
        
        );
      
  }
}
