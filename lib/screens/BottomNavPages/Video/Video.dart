import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_clip/screens/main_activity.dart';

class VideoHomePage extends StatefulWidget {
  const VideoHomePage({super.key});

  @override
  State<VideoHomePage> createState() => _VideoHomePageState();
}

class _VideoHomePageState extends State<VideoHomePage> {

  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      )
    );
  }
}