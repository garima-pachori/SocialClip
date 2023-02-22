import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_clip/screens/BottomNavPages/Video/video_view.dart';
import 'package:social_clip/screens/main_activity.dart';

class VideoHomePage extends StatefulWidget {
  const VideoHomePage({super.key});

  @override
  State<VideoHomePage> createState() => _VideoHomePageState();
}

class _VideoHomePageState extends State<VideoHomePage> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          children:
            List.generate(10, (index)
              {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        CupertinoPageRoute(builder: (_) => const VideoView()), 
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  );
              }
            ),
        ),
      )
    );
  }
}