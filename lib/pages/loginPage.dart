import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/components/myButton.dart';
import 'package:flutter_food_delivery/components/myTextfield.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text edigin controllors
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

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
            "Food Delivery App",
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

          const SizedBox(height: 25),

          // sign in button
          MyButton(
            text: "Sign In",
            onTap: () {},
          ),

          const SizedBox(height: 25),

          // not a member? register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register now",
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
