import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class InstaPost extends StatelessWidget {
  InstaPost({super.key});
  final iconList = [Icons.home, Icons.search, Icons.movie, Icons.shop_2];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            extendBody: true,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "@username",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.add_box_outlined,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.menu_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image(
                                image: AssetImage("assets/boy.jpg"),
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                            Text("@username")
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Edit profile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.grey.withOpacity(0.3),
                              minimumSize:
                                  (Size(MediaQuery.of(context).size.width, 20)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          child: Container(
                            height: 34,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Icon(
                              Icons.person_add,
                            ),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(60),
                              child: Image(
                                image: AssetImage("assets/boy.jpg"),
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text("Highlights"),
                          ],
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 57,
                                  width: 57,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(),
                                  ),
                                ),
                                Positioned(
                                  bottom: 9,
                                  left: 8,
                                  child: Icon(
                                    Icons.add,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                            Text("Add New"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TabBar(tabs: [
                      Tab(
                        icon: Icon(
                          Icons.grid_on_rounded,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.movie_creation_rounded,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.image_search,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                    Expanded(
                      child: TabBarView(children: [
                        Container(
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: ClipRRect(
                                    child: Image.network(
                                      "https://source.unsplash.com/random?sig = $index",
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                );
                              })),
                        ),
                        Container(
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: ClipRRect(
                                    child: Image.network(
                                      "https://source.unsplash.com/random?sig = $index",
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                );
                              })),
                        ),
                        Container(
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: ClipRRect(
                                    child: Image.network(
                                      "https://source.unsplash.com/random?sig = $index",
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                );
                              })),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Color(0xFFF1F9EC),
              child: Icon(
                Icons.add_a_photo_rounded,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: SafeArea(
              child: AnimatedBottomNavigationBar(
                  icons: iconList,
                  activeIndex: 0,
                  backgroundColor: Color(0xFFFFFDD0),
                  inactiveColor: Color.fromARGB(255, 247, 182, 4),
                  gapLocation: GapLocation.center,
                  notchSmoothness: NotchSmoothness.smoothEdge,
                  onTap: ((index) {})),
            )));
  }
}
