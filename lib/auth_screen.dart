import 'package:flutter/material.dart';
import 'package:ohaomob/Login/SigninScreen.dart';
import 'package:ohaomob/Signup/SignupScreen.dart';

class AuthenScreen extends StatelessWidget {
  const AuthenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          SigninScreen(),
          SignupScreen(),
        ],
      ),
    );
  }
}
