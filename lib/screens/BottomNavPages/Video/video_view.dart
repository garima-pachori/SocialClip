import 'dart:math';

import 'package:flutter/material.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  List<Widget> buttonList=[
    const Icon(Icons.download),
    const Icon(Icons.share)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.grey
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            buttonList.length, 
            (index){
              return FloatingActionButton(
                heroTag: "$index",
                onPressed: (){
                  switch(index){
                    case 0:
                      debugPrint("Download image");
                      break;
                    case 1:
                      debugPrint("Share");
                      break;
                  }
                },
                child: buttonList[index],
              );
            }
          ),
        ),
      )
    );
  }
}