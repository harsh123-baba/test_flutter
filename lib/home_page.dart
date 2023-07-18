import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Harshit";

    return Scaffold(
      appBar: AppBar(
        title: Text("Priyanka cha app"),
      ),
      body: Center(
          child: Container(
        child: Text(
          "$name you have to complete this fucking course in $days",
          style: TextStyle(
              fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      )),
      drawer: Drawer(),
    );
    // return Material(child: Center(child: Container(child: Text("Welcome to $days of flutter by $name"),)),)
  }
}
