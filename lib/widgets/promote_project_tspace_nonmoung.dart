import 'package:flutter/material.dart';

import 'video_player_widget.dart';

class PromoteProjectTSpaceNonmoung extends StatefulWidget {
  const PromoteProjectTSpaceNonmoung({super.key});

  @override
  State<PromoteProjectTSpaceNonmoung> createState() =>
      _PromoteProjectTspaceNonmoungState();
}

class _PromoteProjectTspaceNonmoungState
    extends State<PromoteProjectTSpaceNonmoung> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 2 * 0.2,
          right: MediaQuery.of(context).size.width / 2 * 0.2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: const AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'โครงการ T SPACE โนนม่วง',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'บ้านเดี่ยว 2 หลังสุดท้าย พร้อมอยู่',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'ส่วนลด 350,000 บาท',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.redAccent,
                        ),
                        Text(
                          'ติดมหาวิทยาลัยขอนแก่น ใกล้โลตัส และตลาดโนนม่วง',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: VideoPlayerWidget(
              source: 'assets/videos/tspace_nonmoung.mp4',
            ),
          ),
        ],
      ),
    );
  }
}
