import 'package:booklyapp/constants.dart';
import 'package:booklyapp/features/splash%20features/presentation/view/spalsh_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(kPrimaryColor.value),
          brightness: Brightness.dark,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          
      debugShowCheckedModeBanner: false,
      home: const SpalshView(),
    );
  }
}


