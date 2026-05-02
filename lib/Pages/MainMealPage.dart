import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:async';
import 'dart:math';


class MainMealPage extends StatefulWidget {
  const MainMealPage({super.key});

  @override
  State<MainMealPage> createState() => _MainMealPageState();
  
}

class _MainMealPageState extends State<MainMealPage> {

  final MainMealList = [
  "譚仔",
  "三哥",
  "McDonald",
  "壽司郎",
  "Hungry Korean",
  ];

  StreamController<int> controller = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
              
              height: 300,
              child: FortuneWheel(
                selected: controller.stream,
                animateFirst: false,
                items: [
                  for(var food in MainMealList)
                  FortuneItem(child: Text(food)),         
                  ],
                ),
              ),
              ),
              const SizedBox(
                height: 20,
              ),

              Center(
                child: FloatingActionButton.extended(
                  label: Text("開始"),
                  backgroundColor: const Color.fromARGB(255, 205, 188, 248),
                  onPressed: (){
                  int index = Random().nextInt(MainMealList.length);
                  controller.add(index);   
            }
            ),
            ),
          ],
        ),
        
        
        );
      
    }
    @override
    void dispose() {
      controller.close(); // Turns off the pipe
      super.dispose();
    }
}
