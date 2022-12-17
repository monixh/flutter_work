import 'dart:convert';

class PixModel {
  final int id, imageWidth, imageHeight, views, downloads, likes, comments;
  final String pageURL, user, type, tags, largeImageURL;

  PixModel(
      {required this.id,
      required this.imageWidth,
      required this.imageHeight,
      required this.views,
      required this.downloads,
      required this.likes,
      required this.comments,
      required this.pageURL,
      required this.user,
      required this.type,
      required this.tags,
      required this.largeImageURL});

  static PixModel ConvertToDio(Map json) {
    return PixModel(
        id: json['id'],
        imageWidth: json['imageWidth'],
        imageHeight: json['imageHeight'],
        views: json['views'],
        downloads: json['downloads'],
        likes: json["likes"],
        comments: json["comments"],
        pageURL: json["pageURL"],
        user: json['user'],
        type: json['type'],
        tags: json['tags'],
        largeImageURL: json['largeImageURL']);
  }
}
