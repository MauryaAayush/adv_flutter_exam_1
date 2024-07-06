import 'package:adv_flutter_exam_1/Views/Slpash_Screen/thridintro_Screen.dart';
import 'package:flutter/material.dart';

class SecondIntroScreen extends StatelessWidget {
  const SecondIntroScreen({super.key});

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
                    image: AssetImage('assets/Bg.png'), fit: BoxFit.cover)),
          ),
          Positioned(
            left: 20,
            bottom: 80,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThirdIntroScreen(),
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
