import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/FoodDatabase.dart';
import 'package:my_first_mobile_app/Pages/BreakfastPage.dart';
import 'package:my_first_mobile_app/Pages/DrinkPage.dart';
import 'package:my_first_mobile_app/Pages/FoodItemListPage.dart';
import 'package:my_first_mobile_app/Pages/MainMealPage.dart';
import 'package:my_first_mobile_app/Pages/TeaPage.dart';

class rootpage extends StatefulWidget {
  const rootpage({super.key});

  @override
  State<rootpage> createState() => _rootpageState();
}

class _rootpageState extends State<rootpage> {
   int _selectedindex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedindex = index;
    });
  }
  
  final List _pages = [
    MainMealPage(),
    BreakfastPage(),
    TeaPage(),
    DrinkPage(),
  ];

  final List _appbar = [
    "正餐",
    "早餐",
    "下午茶",
    "手搖"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color.fromARGB(255, 239, 237, 231),
            appBar: AppBar(
              title: Text(_appbar[_selectedindex]),
              centerTitle: true,
              titleTextStyle: TextStyle(color: Colors.black87, 
              fontWeight:FontWeight.bold,
              fontSize: 25),
              backgroundColor:Colors.transparent,
            ),
            
            body: _pages[_selectedindex],
            
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedindex,
              onTap: _navigateBottomBar,
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
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              heroTag: "main_fab",
              backgroundColor: const Color.fromARGB(255, 205, 188, 248),
              shape: CircleBorder(),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute( builder: (context) => Fooditemlist(currentList: Fooddatabase.allFoodData[_selectedindex],)));
              },
              child: Icon(Icons.edit),
            ),
          );
  }
}