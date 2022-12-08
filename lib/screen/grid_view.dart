import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewPractice extends StatelessWidget {
  const GridViewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
            child: Text(
              index.toString(),
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
