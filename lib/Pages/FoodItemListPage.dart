import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/FoodDatabase.dart';
import 'package:my_first_mobile_app/FoodTile.dart';

class Fooditemlist extends StatelessWidget {
  List currentList;

  Fooditemlist({
    super.key, 
    required this.currentList
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 231),
      appBar: AppBar(
        title: Text("Food List"),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        ),
      body: 
      ListView.builder(
        itemCount: currentList.length,
        itemBuilder: (context, index){
        return Foodtile(Fooditem: currentList[index],);
        }
        )
     
    );
  }
}