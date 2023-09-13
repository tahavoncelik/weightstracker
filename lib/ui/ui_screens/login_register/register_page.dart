import 'package:flutter/material.dart';
import 'package:weightstracker/ui/ui_components/my_button.dart';
import 'package:weightstracker/ui/ui_components/my_text.dart';

import '../../ui_components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
    // TextControllers
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _passwordConfirmController = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xff161616),
        body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/assets/login1.png'),
                      const MyText(
                        data: 'WeightTracker',
                        size: 25,
                        weight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const MyText(
                        data: 'Track your lifting weights!',
                        size: 23,
                        weight: FontWeight.w200,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                          controller: _emailController,
                          hintText: 'Email',
                          obsecureText: false),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                          obsecureText: true),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                          controller: _passwordConfirmController,
                          hintText: 'Confirm Password',
                          obsecureText: true),
                      const SizedBox(
                        height: 15,
                      ),
                      MyButton(onTap: () {}, text: 'Register', color: const Color(0xff282828),),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'A member?',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          GestureDetector(
                            onTap: widget.onTap,
                            child: const Text(
                              'Login now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )),
      );
    }
}
