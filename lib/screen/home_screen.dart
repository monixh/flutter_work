import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mero App",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Container(
        height: 56,
        color: Colors.cyan,
      ),
      body: Center(
        child: Text("This is in Center"),
      ),
    );
  }
}
