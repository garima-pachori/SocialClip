import 'package:flutter/material.dart';
import 'package:social_clip/constants/measurement.dart';
import 'package:social_clip/view/AppButton.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});
   static const route = '/Navigation_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: (contextHeight(context))/12,
              ),
              Image.asset(
                'assets/images/YouTube.png',
                width: 100.0,
                height: 100.0,
              ),
              const AppButton(
                height: 95.0,
                width: 254.0,
                color: Colors.red,
                textdata: "YouTube Saver",
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                radius: 20.0,
              ),
              const SizedBox(height: 15),
              const Text(
                "Convert YouTube video to \n mp3 or mp4 formats !",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Image.asset(
                'assets/images/WhatsApp.png',
                width: 120.0,
                height: 120.0,
              ),
              const AppButton(
                height: 95.0,
                width: 254.0,
                color: Colors.green,
                textdata: "WhatsApp Status \n Saver",
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                radius: 20.0,
              ),
              const SizedBox(height: 15),
              const Text(
                "Save Whatsapp status in \n no time!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
             ]
           ),
        ),
      ),
    );
  }
}