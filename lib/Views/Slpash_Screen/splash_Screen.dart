import 'package:flutter/material.dart';

import 'intro_Screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroScreen(),));
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF156778)
          ),
          child: Center(
            child: Image.asset('assets/Logo.png'),
          ),
        ),
      ),
    );
  }
}
