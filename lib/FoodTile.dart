import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/FoodDatabase.dart';

class Foodtile extends StatelessWidget {
  String Fooditem;

  Foodtile({
    super.key,
    required this.Fooditem
  });

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 60,           
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 205, 188, 248),
        ),  
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(Fooditem,
              style: TextStyle(fontSize: 17),
              ),),
          ],
        ),           
      ),
    );
  }
}