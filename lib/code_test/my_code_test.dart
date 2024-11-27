import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyCodeTest extends StatefulWidget {
  const MyCodeTest({super.key});

  @override
  State<MyCodeTest> createState() => _MyCodeTestState();
}

class _MyCodeTestState extends State<MyCodeTest> {
  VideoPlayerController controller =
      VideoPlayerController.asset('assets/videos/มะลิวัลย์_บ้านเป็ด.mp4');

  @override
  void initState() {
    super.initState();

    controller.addListener(
      () => setState(() {}),
    );

    controller.initialize().then(
          (value) => setState(() {}),
        );
    print('initState : _MyCodeTestState');
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
    print('dispose : _MyCodeTestState');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.play();
                  },
                  child: const Text('Play')),
              ElevatedButton(
                  onPressed: () {
                    controller.pause();
                  },
                  child: const Text('Pause')),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: Stack(children: [
              VideoPlayer(controller),
              OverlayVideo(
                controller: controller,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class OverlayVideo extends StatelessWidget {
  const OverlayVideo({super.key, required this.controller});
  static const List<Duration> _exampleCaptionOffsets = <Duration>[
    Duration(seconds: -10),
    Duration(seconds: -3),
    Duration(seconds: -1, milliseconds: -500),
    Duration(milliseconds: -250),
    Duration.zero,
    Duration(milliseconds: 250),
    Duration(seconds: 1, milliseconds: 500),
    Duration(seconds: 3),
    Duration(seconds: 10),
  ];
  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          // AnimatedSwitcher(
          //   duration: const Duration(milliseconds: 50),
          //   reverseDuration: const Duration(milliseconds: 200),
          //   child: controller.value.isPlaying
          //       ? const SizedBox.shrink()
          //       : const ColoredBox(
          //           color: Colors.black26,
          //           child: Center(),
          //         ),
          // ),
          GestureDetector(
            onTap: () {
              controller.value.isPlaying
                  ? controller.pause()
                  : controller.play();
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                children: [
                  IconButton(
                    icon: controller.value.isPlaying
                        ? const Icon(Icons.pause)
                        : const Icon(Icons.play_arrow),
                    onPressed: () {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {
                      if (controller.value.volume == 0) {
                        controller.setVolume(1);
                      } else {
                        controller.setVolume(0);
                      }
                    },
                    icon: controller.value.volume == 0
                        ? const Icon(Icons.volume_off)
                        : const Icon(Icons.volume_up),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: VideoProgressIndicator(
                      colors: const VideoProgressColors(
                        playedColor: Colors.white54,
                      ),
                      controller,
                      allowScrubbing: true,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.fullscreen,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
