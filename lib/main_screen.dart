import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tspace_web/widgets/promote_project_tspace_nonmoung.dart';
import 'package:tspace_web/widgets/video_player_widget.dart';
import 'package:video_player/video_player.dart';

import 'widgets/promote_project_tspace_banped.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> imageShowPaths = [
    'assets/images/1-01.jpg',
    'assets/images/3-01.jpg',
    'assets/images/4-01.jpg',
    'assets/images/pic_4.jpg',
  ];
  List<String> imageShowNewProject = [];

  // carousel controller
  CarouselSliderController newProjectCarouselController =
      CarouselSliderController();

  // new projects
  List<String> imageNewProjects = [
    'assets/images/S__19374122.jpg',
    'assets/images/S__19374123.jpg',
    'assets/images/S__19374124.jpg',
    'assets/images/S__19374125.jpg',
    'assets/images/S__19374127.jpg',
    'assets/images/S__19382329.jpg',
    'assets/images/S__19382330.jpg',
  ];
  // banped example room
  List<String> banpedExampleRoom = [
    'assets/images/S__5734639_0.jpg',
    'assets/images/S__5734637_0.jpg',
    'assets/images/S__5734635_0.jpg',
    'assets/images/S__5734638_0.jpg',
    'assets/images/S__5734636_0.jpg',
    'assets/images/S__5734633_0.jpg',
    'assets/images/S__5734632_0.jpg',
    'assets/images/S__5734630_0.jpg',
    'assets/images/S__5734626_0.jpg',
    'assets/images/S__5734631_0.jpg',
    'assets/images/S__5734629_0.jpg',
    'assets/images/S__5734624_0.jpg',
    'assets/images/S__5734628_0.jpg',
    'assets/images/S__5734627_0.jpg',
    'assets/images/S__5734625_0.jpg',
    'assets/images/S__5734622_0.jpg',
    'assets/images/S__5734620_0.jpg',
    'assets/images/S__5734618_0.jpg',
    'assets/images/S__5734617_0.jpg',
    'assets/images/S__5734619_0.jpg',
  ];
  List<String> nonmoungExampleRoom = [
    'assets/images/385312369_769802851824434_3572895722719375788_n.jpg',
    'assets/images/386347042_769802891824430_5215046231095905349_n.jpg',
    'assets/images/386082809_769802838491102_413171116168416080_n.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Text detail
          Container(
            child: Text(
                'แสดงข้อมูลแสดงข้อมูลข่าวสาร promotion สิทธิพิเศษ กิจกรรม ข่าวประชาสัมพันธ์ (แบบกระชับ) และลิ้งข้อมูลไปยัง page รายละเอียดหลัก '),
          ),
          SizedBox(
            height: 620,
            child: Stack(
              children: [
                // image slide
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CarouselSlider(
                    carouselController: newProjectCarouselController,
                    options: CarouselOptions(
                      aspectRatio: 2.53,
                      autoPlay: true,
                      viewportFraction: 1,
                    ),
                    items: imageShowPaths.map((imgPath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            //margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            //decoration: const BoxDecoration(color: Colors.amber),
                            child: Image.asset(
                              imgPath,
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                // search
                Positioned(
                  bottom: 0,
                  left: -20, // offset
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                      child: const SearchingHouseWidget(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          //VideoPromotion()
          const PromoteProjectTSpaceBanPed(),
          // example room of Banped project
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 2 * 0.2,
                  right: MediaQuery.of(context).size.width / 2 * 0.2),
              child: CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: 2.7,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.4),
                items: banpedExampleRoom.map((imgProjectPath) {
                  return ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    child: Image.asset(imgProjectPath, fit: BoxFit.cover),
                  );
                }).toList(),
              ),
            ),
          ),

          const SizedBox(
            height: 80,
          ),
          // โครงการใหม่ Image slide
          CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 3,
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.6),
            items: imageNewProjects.map((imgProjectPath) {
              return ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                child: Image.asset(imgProjectPath, fit: BoxFit.cover),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 80,
          ),
          //VideoPromotion()
          const PromoteProjectTSpaceNonmoung(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 2 * 0.2,
                  right: MediaQuery.of(context).size.width / 2 * 0.2),
              child: CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: 2.7,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.4),
                items: nonmoungExampleRoom.map((imgProjectPath) {
                  return ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    child: Image.asset(imgProjectPath, fit: BoxFit.cover),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class SearchingHouseWidget extends StatefulWidget {
  const SearchingHouseWidget({super.key});

  @override
  State<SearchingHouseWidget> createState() => _SearchingHouseWidgetState();
}

class _SearchingHouseWidgetState extends State<SearchingHouseWidget> {
  final List<String> projects = [
    'T SPACE ร.8-มข.',
    'T SPACE กลางเมือง',
    'T SPACE โนนม่วง',
    'T PRIMO โนนม่วง',
    'T SPACE บ้านเป็ด',
    'T LIVING บ้านเป็ด',
  ];
  final List<String> houses = [
    'บ้านเดี่ยว',
    'บ้านแฝด',
    'ทาวน์โฮม',
    'อาคารพาณิชย์',
  ];
  final List<Icon> houseIcons = [];

  String? projectSelect;
  String? houseSelect;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.5,
        height: 160,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700,
                spreadRadius: 0,
                blurRadius: 1,
                offset: const Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              children: [
                // dropdown button
                Expanded(
                  child: DropdownButtonFormField<String>(
                    borderRadius: BorderRadius.circular(20),
                    dropdownColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 3, color: Colors.green),
                      ),
                    ),
                    hint: const Text('เลือกโครงการ'),
                    value: projectSelect,
                    onChanged: (value) {
                      setState(() {
                        projectSelect = value;
                      });
                    },
                    items: projects.map(
                      (e) {
                        return DropdownMenuItem<String>(
                            value: e, child: Text(e));
                      },
                    ).toList(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // dropdown button
                Expanded(
                    child: DropdownButtonFormField<String>(
                  borderRadius: BorderRadius.circular(20),
                  dropdownColor: Colors.white,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(width: 3, color: Colors.green),
                    ),
                  ),
                  hint: const Text('เลือกแบบบ้าน'),
                  value: houseSelect,
                  onChanged: (value) {
                    setState(() {
                      houseSelect = value;
                    });
                  },
                  items: houses.map(
                    (e) {
                      return DropdownMenuItem<String>(value: e, child: Text(e));
                    },
                  ).toList(),
                )),
                // elevated button
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF07683b),
                    foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text(
                  'Search',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoPromotion extends StatefulWidget {
  const VideoPromotion({super.key});

  @override
  State<VideoPromotion> createState() => _VideoPromotionState();
}

class _VideoPromotionState extends State<VideoPromotion> {
  late VideoPlayerController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: VideoPlayer(controller),
          )
        : Container();
  }
}
