import 'package:flutter/material.dart';
import 'package:simple/components/my_button.dart';
import 'package:simple/components/my_textfield.dart';
import 'package:simple/components/square_tile.dart';

//sign user in method
void signUserIn() {}

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
                //space logo
                const SizedBox(
                  height: 50,
                ),
                //logo locked
                const Icon(
                  Icons.lock,
                  size: 80,
                  color: Colors.black,
                ),
                //space hello
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
                //space welcome
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome back ,you've been missed! :D",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                //space email
                const SizedBox(
                  height: 25,
                ),

                //email TextField
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

                const SizedBox(
                  height: 10,
                ),
                //Forgot Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Lupa Password?',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //SingIn Button
                const MyButton(
                  onTap: signUserIn,
                ),
                //space
                const SizedBox(
                  height: 50,
                ),
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),

                //space
                const SizedBox(
                  height: 60,
                ),
                //google an apple logo
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google logo
                    SquareTile(imagePath: 'lib/images/google.png'),
                    //space
                    SizedBox(
                      width: 50,
                    ),
                    //apple logo
                    SquareTile(imagePath: 'lib/images/apple.png'),
                  ],
                )

                //SignUp
              ],
            ),
          ),
        ));
  }
}
