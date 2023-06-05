import 'package:flutter/material.dart';
import 'package:ohaomob/Signup/SignupScreen.dart';
import 'package:ohaomob/Term/term_screen.dart';
import 'package:ohaomob/auth_screen.dart';
import 'package:ohaomob/HomeScreen/HomeScreen.dart';
import 'package:ohaomob/SplashScreen.dart';
import 'package:ohaomob/main_screen.dart';
import 'package:ohaomob/widgets/exit_popup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const MainScreen(),
      home: TermScreen(),
    );
  }
}
