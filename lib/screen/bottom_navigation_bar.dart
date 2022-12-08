import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BNV extends StatelessWidget {
  BNV({super.key});

  final iconList = [
    (Icons.home),
    (Icons.search),
    (Icons.add_a_photo),
    (Icons.shop_2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_a_photo_outlined,
            color: Colors.black,
          ),
          backgroundColor: Color.fromARGB(255, 73, 114, 6),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 92, 248, 2),
          inactiveColor: Colors.white,
          gapLocation: GapLocation.end,
          notchSmoothness: NotchSmoothness.smoothEdge,
          icons: iconList,
          activeIndex: 0,
          onTap: (index) {},
        ));
  }
}
