import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_clip/screens/main_activity.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    navigate();
  }

  void navigate(){
    Future.delayed(const Duration(seconds: 2));
    Navigator.pushAndRemoveUntil(
      context, 
      CupertinoPageRoute(builder: (_) => const MainActivity()), 
      (route) => false);
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      )
    );
  }
}