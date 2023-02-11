import 'package:flutter/material.dart';
import 'package:free_eats/constants/global_variables.dart';
import 'package:free_eats/screens/auth_screen.dart';
import '../common/custom_button.dart';
import '../common/custom_textfield.dart';

enum Auth { provider, admin, customer }

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Auth _auth = Auth.customer;
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _orgController = TextEditingController();
  final TextEditingController _uidController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: double.maxFinite,
                    // height: MediaQuery.of(context).size.height*0.7,
                    child: Image.asset("assets/images/sign.png")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 70),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AuthScreen()),
                      );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.black),
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
                        onPressed: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.amber),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    "Customer",
                  ),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value:  Auth.customer,
                    groupValue:_auth,
                    onChanged: (Auth? val) {
                      setState(() {
                        _auth = val!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Admin",
                  ),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.admin,
                    groupValue: _auth,
                    onChanged: (Auth? val) {
                      setState(() {
                        _auth = val!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Provider",
                  ),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.provider,
                    groupValue: _auth,
                    onChanged: (Auth? val) {
                      setState(() {
                        _auth = val!;
                      });
                    },
                  ),
                ),
                if (_auth == Auth.customer)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      // key: _signInFormKey,
                      child: Column(children: [
                        CustomTextField(
                            controller: _nameController, hintText: "Name"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                            controller: _emailController, hintText: "Email"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                            controller: _passwordController,
                            hintText: "Password"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomButton(text: "Sign Up", onTap: () {})
                      ]),
                    ),
                  ),
                if (_auth == Auth.admin)
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
                            controller: _emailController, hintText: "Email"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                            controller: _passwordController,
                            hintText: "Password"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomButton(text: "Sign Up", onTap: () {})
                      ]),
                    ),
                  ),
                if (_auth == Auth.provider)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      // key: _signInFormKey,
                      child: Column(children: [
                        CustomTextField(
                            controller: _nameController,
                            hintText: "Enter Name"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                            controller: _emailController,
                            hintText: "Enter Email"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                            controller: _passwordController,
                            hintText: "Enter Password"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                            controller: _orgController,
                            hintText: "Enter Organisation's Name"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                            controller: _uidController,
                            hintText: "Enter UID No."),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomButton(text: "Sign Up", onTap: () {})
                      ]),
                    ),
                  ),
              ]),
        ),
      ),
    );
  }
}
