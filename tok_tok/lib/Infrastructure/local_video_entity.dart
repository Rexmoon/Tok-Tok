import 'package:tok_tok/Domain/Entities/video_post.dart';

final class LocalVideoEntity {
  LocalVideoEntity(
      {required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  factory LocalVideoEntity.fromJson({required Map<String, dynamic> map}) =>
      LocalVideoEntity(
          name: map['name'],
          videoUrl: map['videoUrl'],
          likes: map['likes'],
          views: map['views']);

  Map<String, dynamic> toJoson() => {
        'name': name,
        'videoUrl': videoUrl,
        'likes': likes,
        'views': views,
      };

  VideoPostEntity toVideoPostEntity() => VideoPostEntity(
      caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
