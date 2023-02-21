import 'package:flutter/material.dart';
import 'package:social_clip/screens/LoginPage.dart';
import 'package:social_clip/screens/NavigationPage.dart';
import 'package:social_clip/screens/SignUpPage.dart';
import 'package:firebase_core/firebase_core.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        NavigationPage.route: (context) => NavigationPage(),
        LoginPage.route: (context) => LoginPage(),
        SignUpPage.route: (context) => SignUpPage(),
      },
    );
  }
}
