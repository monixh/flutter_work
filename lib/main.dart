import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/bottom_navigation_bar.dart';

import 'package:flutter_application_1/screen/instagram_post.dart';
import 'package:flutter_application_1/screen/stop_watch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MeroApp",
      debugShowCheckedModeBanner: false,
      home: StopWatchPractice(),
    );
  }
}
