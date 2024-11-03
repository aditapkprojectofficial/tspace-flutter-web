import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Search
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.maxFinite,
              child: SearchingHouseWidget(),
            ),
          )
          // image slide
          // promotion
        ],
      ),
    );
  }
}

class SearchingHouseWidget extends StatelessWidget {
  const SearchingHouseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          // dropdown button
          Expanded(child: TextField()),
          const SizedBox(
            width: 10,
          ),
          // dropdown button
          Expanded(child: TextField()),
          // elevated button
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF07683b),
                    foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text('Search', style: TextStyle(fontSize: 20),),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ));
  }
}
