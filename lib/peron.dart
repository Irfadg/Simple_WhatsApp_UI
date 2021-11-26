import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String name;
  const Person({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(
        child:Center(child:
         Text("welcome $name",
        style: TextStyle(
           fontWeight:FontWeight.bold,
           fontSize: 40,
           color: Colors.black
        ),
        ),
        ),  
      ),
    );
  }
}
