import 'package:flutter/material.dart';

class FbScreen extends StatelessWidget {
  final img1 =
      "https://img.freepik.com/free-photo/young-delivery-woman-wearing-red-polo-shirt-yellow-cap-making-call-me-gesture-looking-confident-isolated-pink-background-jpg_141793-20036.jpg?w=1380&t=st=1669707782~exp=1669708382~hmac=9dbf9fa5d6c85450113a2c9374b76d7df0ef736eab6b7b6d792a1aa1eb416a20";
  final img2 =
      "https://media.istockphoto.com/id/1271381302/photo/happy-people-in-nature-little-girl-standing-outside-arms-raised.jpg?s=612x612&w=is&k=20&c=WYt4RKayQYcr0LRYBgF8ybbJTI6MT7dGJlBu0q8qDYg=";
  final person =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fc3%2F78%2F03%2Fc37803cb28336822e75380551210e10a.jpg&f=1&nofb=1&ipt=3b7b7a3b094dd3aeb3258c416b7a9dad664615002ed86aadeb7b4242791253c1&ipo=images";
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    person,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Post a Status"),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.photo)),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        img1,
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Routine of Nepal Banda",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.more_horiz_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.cancel),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Election Update: KP Oli won",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(
                img2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red.withOpacity(0.9),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.comment,
                    color: Colors.green.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.send,
                    color: Colors.red.withOpacity(0.5),
                  ),
                ],
              ),
              Row(children: [
                Icon(Icons.bookmark),
                SizedBox(
                  width: 10,
                )
              ]),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("123 liked!!!           "),
                Text(
                  "yello",
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ],
            ),
          ]),
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
