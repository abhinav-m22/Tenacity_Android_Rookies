import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:free_eats/features/admin/admin_homepage.dart';
import 'package:free_eats/features/customer/provider_food_profile.dart';
import 'package:free_eats/features/customer/user_homepage.dart';
import 'package:free_eats/features/provider/provider_homepage.dart';
import 'package:free_eats/screens/auth_screen.dart';
import 'package:free_eats/screens/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'features/provider/add_food.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CustomerPage()
    );
  }
}