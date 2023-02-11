import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:free_eats/features/customer/provider_food_profile.dart';
import 'package:free_eats/features/customer/user_homepage.dart';
import 'package:free_eats/screens/auth_screen.dart';
import 'package:free_eats/screens/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      home:ListItemPage()
    );
  }
}