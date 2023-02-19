import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_clip/constants/measurement.dart';
import 'package:social_clip/view/gradient.dart';

import '../view/AppButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
              Container(
                height: 220.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFE9E9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                    ),
                     const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                    ),                 
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const AppButton(
                  height: 63.0,
                  width: 216.0,
                  color: Colors.red,
                  textdata: "Log in",
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  radius: 20.0,
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Dont have an account? ",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Sign up here",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
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