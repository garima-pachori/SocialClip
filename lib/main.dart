import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_clip/Provider/BottomNavProvider.dart';
import 'package:social_clip/screens/Auth/LoginPage.dart';
import 'package:social_clip/screens/NavigationPage.dart';
import 'package:social_clip/screens/Auth/SignUpPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:social_clip/screens/Splash_Screen.dart';
import 'package:social_clip/screens/main_activity.dart';


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
      home: const MainActivity(),
      routes: {
        NavigationPage.route: (context) => const NavigationPage(),
        LoginPage.route: (context) => const LoginPage(),
        SignUpPage.route: (context) => const SignUpPage(),
      },
    ),
  );
  }
}
