import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_clip/Provider/BottomNavProvider.dart';
import 'package:social_clip/screens/BottomNavPages/Image/Image.dart';
import 'package:social_clip/screens/BottomNavPages/Video/Video.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  List<Widget> pages=const [
    ImageHomePage(),
    VideoHomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context,nav, child) {
        return Scaffold(
          body: pages[nav.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value){
              nav.ChangeIndex(value);
            },
            currentIndex: nav.currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.image),label: "Image"),
              BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "Video")
            ],
          ),
        );
      }
    );
  }
}