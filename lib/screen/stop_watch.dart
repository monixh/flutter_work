import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StopWatchPractice extends StatefulWidget {
  const StopWatchPractice({super.key});

  @override
  State<StopWatchPractice> createState() => _StopWatchPracticeState();
}

class _StopWatchPracticeState extends State<StopWatchPractice> {
  bool startIsPressed = true;
  bool stopIsPressed = true;
  bool resetIsPressed = true;

  void startStopwatch() {}
  void stopStopwatch() {}
  void resetStopwatch() {}
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stop watch",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue),
              child: Text(
                "00:00:000",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  width: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 9, 243, 59)),
                  child: Text(
                    "Start",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  width: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(225, 218, 49, 7)),
                  child: Text(
                    "Stop",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  width: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 32, 9, 243)),
                  child: Text(
                    "Reset",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      ));
}
