import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/fb_post.dart';
import 'package:flutter_application_1/model/pixabayImage.dart';

class FbScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Facebook"),
          centerTitle: false,
          backgroundColor: Colors.blue.withOpacity(0.7),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_to_home_screen)),
          ],
        ),
        body: Container(
          child: ListView.builder(itemBuilder: ((context, index) {
            final mode = 
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: FbwWidget(model: ),
            );
          })),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo), label: "Add photo"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search")
          ],
        ));
  }
}
