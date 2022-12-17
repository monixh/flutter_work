import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/widget/fb_post.dart';

final url = "https://pixabay.com/api/";
final apikey = "32046573-d5d3b7397135ffe4209e1020b";

class JsonPhott extends StatefulWidget {
  const JsonPhott({super.key});

  @override
  State<JsonPhott> createState() => _JsonPhottState();
}

class _JsonPhottState extends State<JsonPhott> {
  List images = [];
  @override
  void initState() {
    super.initState();
    fetchPhtot();
  }

  fetchPhtot() async {
    try {
      final dio = Dio(BaseOptions());
      final response = await dio.get(
        url,
        queryParameters: {
          "key": apikey,
          "per_page": 50,
          "page": 1,
          "q": "mountains"
        },
      );
      print(response.statusCode);
      final Map body = response.data;

      images = body['hits'];
    } catch (e, s) {
      print(e);
      print(s);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: images.length,
          itemBuilder: ((context, index) {
            final image = images[index];
            return FbwWidget(model: image);
          })),
    );
  }
}
