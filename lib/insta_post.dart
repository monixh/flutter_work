import 'package:flutter/material.dart';

class Insta extends StatelessWidget {
  final imgUrl =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ffluttergems.dev%2Fmedia-cards%2Fflutter_rounded_progress_bar.png&f=1&nofb=1&ipt=c6c32dc51569b6e28a6b34b2e7b47e83e843c05d2ede8736600f224cb355729e&ipo=images";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Icon(
            Icons.search,
            size: 45,
            color: Colors.red,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 45,
                color: Colors.yellow,
              )),
          Image.network(
            imgUrl,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
