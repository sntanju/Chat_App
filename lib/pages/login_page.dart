import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_input_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void signIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15,),
                Icon(Icons.message, size: 80, color: Colors.grey[800],),
                const SizedBox(height: 40,),
                Text("Welcome back!", style: TextStyle(fontSize: 16),),
                const SizedBox(height: 25,),
                MyInputField(controller: emailController, hintText: "Email", obscureText: false),
                const SizedBox(height: 10,),
                MyInputField(controller: passwordController, hintText: "Password", obscureText: true),
                const SizedBox(height: 25,),
                MyButton(onTap: signIn, text: "Sign In"),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member?"),
                    const SizedBox(width: 5,),
                    InkWell(
                      onTap: widget.onTap,
                      child: Text("Register now", style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                   // const Text("Register now", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
