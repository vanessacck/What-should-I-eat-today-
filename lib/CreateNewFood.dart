import 'package:flutter/material.dart';

class Createnewfood extends StatelessWidget {
  const Createnewfood({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 205, 188, 248),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hint: Text("輸入新餐廳"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: (){}, 
                child: Text("確定")),
            ],
          )
        ],),

      ),
    );
  }
}