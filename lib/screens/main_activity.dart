import 'package:flutter/material.dart';

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.image),label: "Image"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "Video")
        ],
      ),
    );
  }
}