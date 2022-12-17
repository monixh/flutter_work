import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/model/pixabayImage.dart';

class FbwWidget extends StatelessWidget {
  final PixModel model;

  final img1 =
      "https://img.freepik.com/free-photo/young-delivery-woman-wearing-red-polo-shirt-yellow-cap-making-call-me-gesture-looking-confident-isolated-pink-background-jpg_141793-20036.jpg?w=1380&t=st=1669707782~exp=1669708382~hmac=9dbf9fa5d6c85450113a2c9374b76d7df0ef736eab6b7b6d792a1aa1eb416a20";

  FbwWidget({
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
                model.user,
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              model.tags,
            ),
          ),
        ],
      ),
      Image.network(model.largeImageURL),
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
          Text("${model.likes}"),
          Text(
            "yello",
            style: TextStyle(color: Colors.deepOrange),
          ),
        ],
      ),
    ]);
  }
}
