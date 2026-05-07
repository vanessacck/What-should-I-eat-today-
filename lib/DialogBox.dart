import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback OnSave;

  Dialogbox({
    super.key,
    required this.controller,
    required this.OnSave
});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 205, 188, 248),
      content: Container(
        height: 150,
        child: Form(
          key: _formkey, 
          child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hint: Text("輸入新餐廳"), 
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if  (value == null || value.trim().isEmpty){
                return "請輸入餐廳";
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: (){
                if (_formkey.currentState!.validate()){
                  OnSave();
                }}, 
                child: Text("確定")),
            ],
          )
        ],),

      ),
      ),
    );
  }
}