import 'package:flutter/material.dart';
import 'package:social_clip/constants/measurement.dart';
import 'package:social_clip/screens/LoginPage.dart';
import 'package:social_clip/view/gradient.dart';

import '../view/AppButton.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
   static const route = '/Signup_page';



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
              Container(
                height: 283.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFE9E9),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              AppButton(
                  height: 63.0,
                  width: 216.0,
                  color: Colors.red,
                  textdata: "Sign Up",
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  radius: 20.0,
                  onTap: (){
                     Navigator.pushNamed(context, LoginPage.route);
                  },
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account? ",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    InkWell(
                      onTap:  ()=> Navigator.pushNamed(context, LoginPage.route),
                      child: Text(
                        "Login here",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      )
    );
  }
}