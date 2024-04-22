import 'package:flutter/material.dart';
import 'package:tok_tok/Domain/Entities/video_post.dart';
import 'package:tok_tok/Presentation/Widgets/Shared/video_buttons.dart';

final class VideoScrollableWidget extends StatelessWidget {
  const VideoScrollableWidget({super.key, required this.videos});

  final List<VideoPostEntity> videos;

  @override
  Widget build(BuildContext context) {
    return _PageWidget(videos: videos);
  }
}

final class _PageWidget extends StatelessWidget {
  const _PageWidget({
    required this.videos,
  });

  final List<VideoPostEntity> videos;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,

      /// For android scroll bounces
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPostEntity video = videos[index];

        return Stack(
          children: [
            Positioned(
              bottom: 50,
              right: 20,
              child: VideoButtons(video: video),
            )
          ],
        );
      },
    );
  }
}
