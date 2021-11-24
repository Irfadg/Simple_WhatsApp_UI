import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.green,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('Person$index',
                  style: TextStyle(
                    fontWeight: FontWeight.bold),
                    ),
                  subtitle: Text('Message from person$index'),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:NetworkImage('https://i.pinimg.com/originals/72/38/34/72383461bef97e2ca8c508c1b998b51c.png'),
                  ),
                  trailing: Text("1$index:00 PM "),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 15,
              ),
              ),
    );
  }
}
