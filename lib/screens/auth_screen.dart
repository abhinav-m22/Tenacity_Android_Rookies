import 'package:flutter/material.dart';
import 'package:free_eats/constants/global_variables.dart';
import 'package:free_eats/features/admin/admin_homepage.dart';
import 'package:free_eats/features/customer/user_homepage.dart';
import 'package:free_eats/features/provider/provider_homepage.dart';
import 'package:free_eats/screens/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:ui';
import '../common/custom_button.dart';
import '../common/custom_textfield.dart';
import '../common/profile_page.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  int _page = 0;
  bool visible = false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final _auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return Material(
      child: Scaffold(
        key: _scaffoldKey,
        body: Container(
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
                    onPressed: () {},
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
                key: _formkey,
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
                  CustomButton(
                      text: "Sign In",
                      onTap: () {
                        setState(() {
                          visible = true;
                        });
                        signIn(_emailController.text, _passwordController.text);
                      })
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void route()  {
    User? user = FirebaseAuth.instance.currentUser;
     var kk=  FirebaseFirestore.instance
        .collection('users')
        .doc("k3q8ktkNLHjHf9hJq88h")
        .get()
        .then((DocumentSnapshot documentSnapshot) {
          print(documentSnapshot.exists);
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('type') == "customer") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CustomerPage(),
            ),
          );
        } else if (documentSnapshot.get('type') == "Admin") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => AdminPage(),
            ),
          );
        }else if(documentSnapshot.get('type') == "provider"){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ProviderPage(),
            ),
          );
        }
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        route();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}
