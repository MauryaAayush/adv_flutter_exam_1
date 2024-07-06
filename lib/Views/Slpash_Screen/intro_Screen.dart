import 'package:adv_flutter_exam_1/Views/Slpash_Screen/secondIntro_Screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Bg(2).png'), fit: BoxFit.cover)),
          ),
          Positioned(
            left: 20,
            bottom: 80,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondIntroScreen(),
                    ));
              },
              child: Container(
                height: 60,
                width: 370,
                decoration: BoxDecoration(
                  color: Color(0xFF156778),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
