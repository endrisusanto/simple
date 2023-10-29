import 'package:flutter/material.dart';
import 'package:simple/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

// text editing controllers

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                //logo
                const SizedBox(
                  height: 50,
                ),
                //logo locked
                const Icon(
                  Icons.lock,
                  size: 80,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 50,
                ),
                //Hello Again
                const Text(
                  "Hello Again",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome back ,you've been missed! :D",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //email TextField baru
                MyTextField(
                  controller: usernameController,
                  hintText: 'Usename',
                  obscureText: false,
                ),

                const SizedBox(
                  height: 10,
                ),

                //password TextField
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                //SingIn Button TextField

                //SignUp
              ],
            ),
          ),
        ));
  }
}
