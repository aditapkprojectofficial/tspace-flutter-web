import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class UseChewieVideoDisplay extends StatefulWidget {
  const UseChewieVideoDisplay({super.key});

  @override
  State<UseChewieVideoDisplay> createState() => _UserChewieVideoDisplayState();
}

class _UserChewieVideoDisplayState extends State<UseChewieVideoDisplay> {
  late VideoPlayerController videoController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();

    videoController =
        VideoPlayerController.asset('assets/videos/maliwan_banped.mp4')
          ..initialize().then(
            (_) => setState(() {}),
          );

    chewieController = ChewieController(
      videoPlayerController: videoController,
      aspectRatio: 16 / 9,
      showOptions: false,
    );
  }

  @override
  void dispose() {
    videoController.dispose();
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
