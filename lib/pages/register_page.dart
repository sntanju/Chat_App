import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_input_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() {}

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
                const SizedBox(height: 15),
                Icon(Icons.message, size: 80, color: Colors.grey[800]),

                const SizedBox(height: 40),
                Text("Lets create an account!", style: TextStyle(fontSize: 16)),

                const SizedBox(height: 25),
                MyInputField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                MyInputField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),

                const SizedBox(height: 10),
                MyInputField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),

                const SizedBox(height: 25),
                MyButton(onTap: signUp, text: "Register"),

                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: widget.onTap,
                      child: const Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
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
