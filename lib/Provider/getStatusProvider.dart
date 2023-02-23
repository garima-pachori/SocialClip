import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:social_clip/constants/constants.dart';

class GetStatusProvider extends ChangeNotifier{

  void getStatus() async{
    final status=await Permission.storage.request();


    if(status.isDenied){
      Permission.storage.request();
      debugPrint("Permission Denied");
      return;
    }
    if(status.isGranted){
      final directory=Directory(AppConstants.WHATSAPP_PATH);

      if(directory.existsSync()){
        final items=directory.listSync();
        debugPrint(items.toString());
      }
      else{
        debugPrint("No whatsapp found");
      }
    }
  }
}