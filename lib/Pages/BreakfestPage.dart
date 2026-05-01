import 'package:flutter/material.dart';

class BreakfestPage extends StatelessWidget {
  const BreakfestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        appBar: AppBar(
          title: Text("早餐"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black87, 
          fontWeight:FontWeight.bold,
          fontSize: 22),
          backgroundColor:Colors.transparent,
        ),

        ),

      );
      
  }
}
