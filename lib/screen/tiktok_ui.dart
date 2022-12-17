import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TiktokUI extends StatelessWidget {
  const TiktokUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              image: AssetImage('assets/tik-tok-wallpaper-0019.jpg'),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                SizedBox(width: 12),
                Icon(
                  Icons.live_tv,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 80,
                ),
                Row(
                  children: [
                    Text("Following",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17)),
                    SizedBox(
                      width: 8,
                    ),
                    Text("For You",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17)),
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                )
              ],
            ),
            Positioned(
              bottom: 20,
              left: 10,
              child: Column(
                children: [
                  Text(
                    "@username here",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "captions here",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                      ),
                      Text("Song name here",
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 80,
              right: 5,
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image(
                          image: AssetImage('assets/boy.jpg'),
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: -1,
                        right: 10,
                        child: Stack(
                          children: [
                            Container(
                              height: 25,
                              width: 23,
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                    iconSize: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "000",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.comment),
                    iconSize: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "000",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark),
                    iconSize: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "000",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    iconSize: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "000",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 8,
              child: Stack(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: AssetImage('assets/boy.jpg'),
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.yellow, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: "Now"),
        BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
    );
  }
}
