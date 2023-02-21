import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_clip/constants/measurement.dart';
import 'package:social_clip/screens/NavigationPage.dart';
import 'package:social_clip/screens/SignUpPage.dart';
import 'package:social_clip/view/gradient.dart';

import '../view/AppButton.dart';

class LoginPage extends StatefulWidget {
   static const route = '/login_page';

  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              GradientScaffold(
                height: 230.0, 
                width: contextWidth(context),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text("Welcome to",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text("Social Clip",
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFE9E9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                          ),
                        ),
                         const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                        ),                 
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              AppButton(
                  height: 63.0,
                  width: 216.0,
                  color: Colors.red,
                  textdata: "Log in",
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  radius: 20.0,
                  onTap: (){
                    Navigator.pushNamed(context, NavigationPage.route);
                  },
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Dont have an account? ",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, SignUpPage.route),
                      child: const Text(
                        "Sign up here",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),
                      ),
                    )
                  ],
                )
            ],
          ),
        ),
      )
    );
  }
}