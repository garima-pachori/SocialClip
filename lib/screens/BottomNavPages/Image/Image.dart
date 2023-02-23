import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_clip/Provider/getStatusProvider.dart';
import 'package:social_clip/screens/BottomNavPages/Image/image_view.dart';
import 'package:social_clip/screens/main_activity.dart';

class ImageHomePage extends StatefulWidget {
  const ImageHomePage({super.key});

  @override
  State<ImageHomePage> createState() => _ImageHomePageState();
}

class _ImageHomePageState extends State<ImageHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Provider.of<GetStatusProvider>(context, listen: false).getStatus();
  }

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          children:
            List.generate(10, (index)
              {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        CupertinoPageRoute(builder: (_) => const ImageView()), 
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
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