import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_clip/screens/main_activity.dart';

class ImageHomePage extends StatefulWidget {
  const ImageHomePage({super.key});

  @override
  State<ImageHomePage> createState() => _ImageHomePageState();
}

class _ImageHomePageState extends State<ImageHomePage> {

  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      )
    );
  }
}