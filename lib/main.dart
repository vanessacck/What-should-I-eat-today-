import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/Pages/BreakfestPage.dart';
import 'package:my_first_mobile_app/Pages/DrinkPage.dart';
import 'package:my_first_mobile_app/Pages/MainMealPage.dart';
import 'package:my_first_mobile_app/Pages/TeaPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List _pages = [
    MainMealPage(),

    BreakfestPage(),

    TeaPage(),

    DrinkPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 237, 231),
        // appBar: AppBar(
        //   title: Text("今日食咩好"),
        //   centerTitle: true,
        //   titleTextStyle: TextStyle(color: Colors.black87, 
        //   fontWeight:FontWeight.bold,
        //   fontSize: 22),
        //   backgroundColor:Colors.transparent,
        // ),
        
        body: _pages[0],
        
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
