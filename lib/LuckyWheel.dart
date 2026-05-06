import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:async';
import 'dart:math';

import 'package:my_first_mobile_app/DialogBox.dart';

class LuckyWheel extends StatefulWidget {
  final List FoodList;

  const LuckyWheel({
    super.key,
    required this.FoodList
  });

  @override
  State<LuckyWheel> createState() => _LuckyWheelState();
  
}

class _LuckyWheelState extends State<LuckyWheel>{
  List FoodItem = [];

  @override
  void initState(){
    super.initState();
    FoodItem = widget.FoodList;

  }

  StreamController<int> controller = StreamController<int>();
  final _controller = TextEditingController();

  void SaveNewMeal(){
    setState(() {
      FoodItem.add(_controller.text);
    });
    Navigator.of(context).pop();
    _controller.clear();
  }

  void CreateNewMeal(){
  showDialog(
    context: context, 
    builder: (context){
    return Dialogbox(
      controller: _controller,
      OnSave: SaveNewMeal,);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
              
              height: 300,
              child: FortuneWheel(
                selected: controller.stream,
                animateFirst: false,
                items: [
                  for(var food in FoodItem)
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
                  elevation: 0,
                  label: Text("開始"),
                  backgroundColor: const Color.fromARGB(255, 205, 188, 248),
                  onPressed: (){
                  int index = Random().nextInt(FoodItem.length);
                  controller.add(index);   
            }
            ),
            ),
            
          ],
        ),

        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor:  const Color.fromARGB(255, 205, 188, 248),
          onPressed: CreateNewMeal,
          child: Icon(Icons.add),  
          ),
        
        );
      
    }
    @override
    void dispose() {
      controller.close(); // Turns off the pipe
      super.dispose();
    }
}