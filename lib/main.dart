import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_clip/Provider/BottomNavProvider.dart';
import 'package:social_clip/screens/Auth/LoginPage.dart';
import 'package:social_clip/screens/NavigationPage.dart';
import 'package:social_clip/screens/Auth/SignUpPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:social_clip/screens/Splash_Screen.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider())
      ],
      child: MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        NavigationPage.route: (context) => NavigationPage(),
        LoginPage.route: (context) => LoginPage(),
        SignUpPage.route: (context) => SignUpPage(),
      },
    ),
  );
  }
}
