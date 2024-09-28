import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/components/myButton.dart';
import 'package:flutter_food_delivery/components/myTextfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Icon(
            Icons.lock_open_rounded,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          // message, app slogan
          Text(
            "Let's create an account for you",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          // email textfield
          MyTextfield(
            controller: emailController,
            hintText: "Email",
            obsureText: false,
          ),

          const SizedBox(height: 10),

          // password textfield
          MyTextfield(
            controller: passwordController,
            hintText: "Password",
            obsureText: true, // hide text
          ),

          const SizedBox(height: 10),

          MyTextfield(
            controller: confirmPasswordController,
            hintText: "Confirm Password",
            obsureText: true, // hide text
          ),

          const SizedBox(height: 25),

          // sign up button
          MyButton(
            text: "Sign Up",
            onTap: () {},
          ),

          const SizedBox(height: 25),

          // already have an account? Login here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "already have an account?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
