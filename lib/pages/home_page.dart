import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/short_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Shorts',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
          itemBuilder: (context, index) {
        return ShortContent(index: index);
      }),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        enableFeedback: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back_outlined),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.personal_video_sharp), label: "Subscriptions"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "You"),
        ],
      ),
    );
  }
}
