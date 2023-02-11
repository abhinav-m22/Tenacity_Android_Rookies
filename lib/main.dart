import 'package:flutter/material.dart';
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
    return MaterialApp(
      home:CustomerPage()
    );
  }
}