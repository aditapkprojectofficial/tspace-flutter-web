import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    super.key,
    required this.source,
    this.aspectRatio,
  });

  final String source;
  final double? aspectRatio;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  @override
  void initState() {
    super.initState();

    videoPlayerController = VideoPlayerController.asset(widget.source)
      ..initialize().then(
        (_) => setState(() {}),
      );

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: widget.aspectRatio ?? 16 / 9,
      showOptions: false,
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: chewieController.aspectRatio!,
      child: Chewie(
        controller: chewieController,
      ),
    );
  }
}
