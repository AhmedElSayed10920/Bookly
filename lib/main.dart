import 'package:booklyapp/constants.dart';
import 'package:booklyapp/features/splash%20features/presentation/view/spalsh_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(kPrimaryColor.value),
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const SpalshView(),
    );
  }
}


