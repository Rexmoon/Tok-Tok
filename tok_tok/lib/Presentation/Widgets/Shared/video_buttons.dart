import 'package:flutter/material.dart';
import 'package:tok_tok/Config/human_formats.dart';
import 'package:tok_tok/Domain/Entities/video_post.dart';
import 'package:animate_do/animate_do.dart';

final class VideoButtons extends StatelessWidget {
  const VideoButtons({super.key, required this.video});

  final VideoPostEntity video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          icon: Icons.favorite,
          color: Colors.red,
        ),
        _CustomIconButton(
          value: video.views,
          icon: Icons.remove_red_eye_sharp,
          color: Colors.green,
        ),
        SpinPerfect(
            duration: const Duration(seconds: 2),
            infinite: true,
            child: const _CustomIconButton(
                value: 0, icon: Icons.play_circle_outlined))
      ],
    );
  }
}

final class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton(
      {required this.value, required this.icon, Color? color})
      : color = color ?? Colors.white;

  final Color? color;
  final int value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
        icon: Icon(icon),
        color: color,
        onPressed: () => {},
      ),
      if (value > 0) Text(HumanFormats.humanReadbleNumber(value))
    ]);
  }
}
