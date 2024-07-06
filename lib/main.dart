import 'package:adv_flutter_exam_1/Controler/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Views/Home_Screen/HomeScreen.dart';
import 'Views/Slpash_Screen/splash_Screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProductProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
