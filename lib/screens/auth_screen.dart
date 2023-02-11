import 'package:flutter/material.dart';
import 'package:free_eats/constants/global_variables.dart';
import 'package:free_eats/screens/signup_page.dart';

import '../common/custom_button.dart';
import '../common/custom_textfield.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        // decoration: BoxDecoration(
        //   // gradient: GlobalVariables.signInGradient,
        //   ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            
              // width: MediaQuery.of(context).size.width*0.7,
              // height: MediaQuery.of(context).size.height*0.7,
              child: Image.asset("assets/images/sign.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                      padding: const EdgeInsets.only(left: 70),
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.amber),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 70),
                      child: ElevatedButton(
                        onPressed: () {
                           Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()),
                      );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                      ),
                    ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              // key: _signInFormKey,
              child: Column(children: [
                CustomTextField(
                    controller: _emailController, hintText: "Email"),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                    controller: _passwordController, hintText: "Password"),
                const SizedBox(
                  height: 18,
                ),
                CustomButton(text: "Sign In", onTap: () {})
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
