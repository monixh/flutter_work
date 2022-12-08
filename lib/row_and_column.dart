import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MeroApp"),
      ),
      body: Container(
        color: Colors.pink.withOpacity(0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              color: Colors.grey,
            ),
            Container(
              height: 200,
              color: Colors.green.withOpacity(0.3),
            ),
            Container(
              height: 200,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
