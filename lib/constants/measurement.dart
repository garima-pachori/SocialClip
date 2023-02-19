import 'package:flutter/material.dart';

contextHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

contextWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

contextSize(BuildContext context) {
  return MediaQuery.of(context).size;
}