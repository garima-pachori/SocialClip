import 'package:flutter/material.dart';
import 'dart:ui';

class GradientScaffold extends StatelessWidget {

  final height;
  final width;
  final child;

  GradientScaffold({
    this.height,
    this.width,
    this.child,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
          ),
          gradient: LinearGradient(
            colors: [
              Color(0xffF17318),
              Color(0xCCF74433),
              Color(0x80FF005C)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: child,
    );
  }
}