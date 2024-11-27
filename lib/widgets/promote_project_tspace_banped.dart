import 'package:flutter/material.dart';

import 'video_player_widget.dart';

class PromoteProjectTSpaceBanPed extends StatefulWidget {
  const PromoteProjectTSpaceBanPed({super.key});

  @override
  State<PromoteProjectTSpaceBanPed> createState() =>
      _PromoteProjectTSpaceBanPedState();
}

class _PromoteProjectTSpaceBanPedState
    extends State<PromoteProjectTSpaceBanPed> {
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
                      'โครงการ T SPACE บ้านเป็ด',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'เปิดให้จองแล้ว',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'จอง 5 พันบาท ยื่นกู้ได้ทันที',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'ส่วนลดสูงสุด 4 แสนบาท ราคาเริ่มต้น 3.xx ล้านบาท',
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
                          'ถนนมะลิวัลล์ - บ้านเป็ด',
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
              source: 'assets/videos/maliwan_banped.mp4',
            ),
          ),
        ],
      ),
    );
  }
}
