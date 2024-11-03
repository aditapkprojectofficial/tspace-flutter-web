import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home - t-space property'.toUpperCase(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.title});

  final String? title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(
    initialPage: 0,
  );
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: HeaderNavbar(
            selectedHeader: index,
            onSelect0: () => setState(() {
              index = 0;
              pageController.jumpToPage(0);
            }),
            onSelect1: () => setState(() {
              index = 1;
              pageController.jumpToPage(1);
            }),
            onSelect2: () => setState(() {
              index = 2;
              pageController.jumpToPage(2);
            }),
            onSelect3: () => setState(() {
              index = 3;
              pageController.jumpToPage(3);
            }),
          ),
        ),
        body: PageView(
          controller: pageController,
          children: [
            MainScreen(),
            Center(
              child: Text('Page 2'),
            ),
            Center(
              child: Text('Page 3'),
            ),
            Center(
              child: Text('Page 4'),
            ),
          ],
        ));
  }
}

class HeaderNavbar extends StatelessWidget {
  const HeaderNavbar({
    super.key,
    required this.selectedHeader,
    this.onSelect0,
    this.onSelect1,
    this.onSelect2,
    this.onSelect3,
  });

  final int selectedHeader;
  final Function()? onSelect0;
  final Function()? onSelect1;
  final Function()? onSelect2;
  final Function()? onSelect3;
  Color? onSelect(int index) {
    return selectedHeader == index ? const Color(0xFF07683b) : Colors.black54;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 60,top: 15, bottom: 15),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo_tspace.jpg',
            height: 100,
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextButton(
                  onPressed: onSelect0,
                  child: Text(
                    'หน้าหลัก',
                    style: TextStyle(
                        fontSize: 20,
                        color: onSelect(0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: MouseRegion(
                  onEnter: (event) {
                    // setState(() {
                    //   // x_overlay = event.position.dx;
                    //   // y_overlay = event.position.dy + 5;
                    // });
                  },
                  onExit: (event) {
                    //print(event);
                    //projectController.hide();
                  },
                  child: TextButton(
                    onPressed: onSelect1,
                    // child: OverlayPortal(
                    //   controller: projectController,
                    //   overlayChildBuilder: (context) {
                    //     return Positioned(
                    //       left: x_overlay,
                    //       top: y_overlay,
                    //       child: GestureDetector(
                    //         onTap: () {
                    //           projectController.hide();
                    //         },
                    //         child: Container(
                    //           width: 100,
                    //           height: 100,
                    //           color: Colors.amber,
                    //           child: Text('Overlay'),
                    //         ),
                    //       ),
                    //     );
                    //   },
                    child: Text(
                      'โครงการ',
                      style: TextStyle(
                          fontSize: 20,
                          color: onSelect(1)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextButton(
                  onPressed: onSelect2,
                  child: Text(
                    'แบบบ้าน',
                    style: TextStyle(fontSize: 20, color: onSelect(2)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextButton(
                  onPressed: onSelect3,
                  child: Text(
                    'ติดต่อเรา',
                    style: TextStyle(fontSize: 20, color: onSelect(3)),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
