import 'package:flutter/material.dart';
class GlobalVariables {
  // COLORS
  static const signInGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 238, 149, 34),
      Color.fromARGB(255, 255, 233, 199),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.1, 1.0],
  );
  static const appBarGradient2 = LinearGradient(
    colors: [
      Color.fromARGB(255, 154, 228, 226),
      Color.fromARGB(255, 219, 249, 248),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.1, 1.0],
  );
   static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
}