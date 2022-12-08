import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridPractice extends StatelessWidget {
  const StaggeredGridPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Staggered Grid View"),
          centerTitle: true,
          backgroundColor: Colors.red,
          bottom: TabBar(tabs: [
            Text(
              "Masonary",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            Text("Quilted",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
            Text("Staired",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
            Text("Woven",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
            Text("Aligned",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold))
          ]),
        ),
        body: TabBarView(children: [
          Container(
              child: MasonryGridView.builder(
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 20,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  itemBuilder: ((context, index) {
                    return ClipRRect(
                      child: Image.network(
                          "https://source.unsplash.com/random?sig = $index"),
                      borderRadius: BorderRadius.circular(20),
                    );
                  }))),
          Container(
            child: GridView.builder(
                gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    pattern: [
                      QuiltedGridTile(2, 2),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 2),
                    ]),
                itemCount: 20,
                itemBuilder: ((context, index) {
                  return ClipRRect(
                    child: Image.network(
                      "https://source.unsplash.com/random?sig = $index",
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  );
                })),
          ),
          Container(
            child: GridView.custom(
                gridDelegate: SliverStairedGridDelegate(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    pattern: [
                      StairedGridTile(0.5, 1),
                      StairedGridTile(0.5, 3 / 4),
                      StairedGridTile(1, 10 / 4),
                    ]),
                childrenDelegate: SliverChildBuilderDelegate(((context, index) {
                  return ClipRRect(
                    child: Image.network(
                      "https://source.unsplash.com/random?sig = $index",
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  );
                }))),
          ),
          Container(
            child: GridView.custom(
                gridDelegate: SliverWovenGridDelegate.count(pattern: [
                  WovenGridTile(1),
                  WovenGridTile(5 / 7),
                ], crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
                childrenDelegate:
                    SliverChildBuilderDelegate((((context, index) {
                  return ClipRRect(
                    child: Image.network(
                      "https://source.unsplash.com/random?sig = $index",
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  );
                })))),
          ),
          Container(
            child: AlignedGridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemBuilder: ((context, index) {
                  return ClipRRect(
                    child: Image.network(
                      "https://source.unsplash.com/random?sig = $index",
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  );
                })),
          )
        ]),
      ),
    );
  }
}
