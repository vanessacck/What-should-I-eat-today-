import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        appBar: AppBar(
          title: Text("今日食咩好"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black87, 
          fontWeight:FontWeight.bold,
          fontSize: 22),
          backgroundColor:Colors.transparent,
        ),
        
        
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: const Color.fromARGB(255, 107, 73, 186),
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.dinner_dining),
              label: "正餐"
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.breakfast_dining),
              label: "早餐"
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: "下午茶"
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.local_drink),
              label: "手搖"
              )
          ]
        ),

        ),

      );
      
  }
}
