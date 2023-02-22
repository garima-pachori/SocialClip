import 'dart:math';

import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  List<Widget> buttonList=[
    const Icon(Icons.download),
    const Icon(Icons.print),
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
                      debugPrint("Print");
                      break;
                    case 2:
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