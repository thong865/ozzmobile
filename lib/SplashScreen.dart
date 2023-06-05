import 'package:flutter/material.dart';
import 'package:ohaomob/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetoAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 10,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(65),
              child: Image.asset(
                'assets/images/ohzao-logo.png',
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigatetoAuth() async {
  await Future.delayed(
    Duration(milliseconds: 1500),
    () {},
  );
  // Navigator.pushReplacement(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => AuthenScreen(),
  //   ),
  // );
}
