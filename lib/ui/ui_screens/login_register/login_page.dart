import 'package:flutter/material.dart';
import 'package:weightstracker/ui/ui_components/my_button.dart';
import 'package:weightstracker/ui/ui_components/my_text.dart';
import 'package:weightstracker/ui/ui_components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextControllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                  height: 15,
                ),
                MyButton(onTap: () {}, text: 'Log In', color: const Color(0xff282828),),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Flexible(
                      child: Divider(
                        color: Color(0xff282828),
                        thickness: 2,
                        indent: 10,
                        endIndent: 30,
                      ),
                    ),
                    MyText(data: 'or'),
                    Flexible(
                      child: Divider(
                        color: Color(0xff282828),
                        thickness: 2,
                        indent: 30,
                        endIndent: 10,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(onTap: (){}, text: 'Facebook', width: 150, color: Colors.black,),
                    MyButton(onTap: (){}, text: 'Google', width: 150, color: Colors.black,),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register now',
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
