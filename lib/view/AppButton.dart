import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

 final height;
  final width;
  final color;
  final textdata;
  final fontSize;
  final fontWeight;
  final radius;
  final onTap;

  const AppButton(
      {super.key,
      this.height,
      this.width,
      this.color,
      this.textdata,
      this.fontSize,
      this.fontWeight,
      this.radius,
      this.onTap});

 @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 1.2,
                  offset: Offset(0, 7),
                  color: Color.fromARGB(162, 0, 0, 0))
            ]),
        child: Center(
              child: Text(
                textdata,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
                textAlign: TextAlign.center,
              )
        ),
      ),
    );
  }
}