import 'package:flutter/material.dart';

class Fooditemlist extends StatefulWidget {
  const Fooditemlist({super.key});

  @override
  State<Fooditemlist> createState() => _FooditemlistState();
}

class _FooditemlistState extends State<Fooditemlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 231),
      appBar: AppBar(title: Text("Food List"),),
      body: 
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 205, 188, 248),
            ),
          )
        ],
      )
    );
  }
}