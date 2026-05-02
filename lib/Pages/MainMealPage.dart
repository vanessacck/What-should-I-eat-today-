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

  StreamController<int> controller = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        body: Column(
          children: [
            Center(
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
              const SizedBox(
                height: 20,
              ),

              Center(
                child: FloatingActionButton(
                  onPressed: (){
                  int index = Random().nextInt(99);
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
