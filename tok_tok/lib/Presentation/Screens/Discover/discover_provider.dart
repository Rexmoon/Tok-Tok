import 'package:flutter/material.dart';
import 'package:tok_tok/Domain/Entities/video_post.dart';
import 'package:tok_tok/Infrastructure/local_video_entity.dart';
import 'package:tok_tok/Shared/Data/local_video_post.dart';

final class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository and Datasource

  final List<VideoPostEntity> _videos = [];
  List<VideoPostEntity> get videos => _videos;

  bool initialLoading = true;

  Future<void> loadNextPage() async {
    // TODO: Load videos
    await Future.delayed(const Duration(seconds: 1));

    final List<VideoPostEntity> videos = videoPosts
        .map((jsonVideo) =>
            LocalVideoEntity.fromJson(map: jsonVideo).toVideoPostEntity())
        .toList();

    _videos.addAll(videos);
    initialLoading = false;
    notifyListeners();
  }
}
