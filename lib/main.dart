import 'package:disease_prediction_app/screens/confirm_page.dart';
import 'package:disease_prediction_app/screens/disease_details_page.dart';
import 'package:disease_prediction_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme, // Inherit existing theme
        ),
      ),
      home: const HomePage(),
    );
  }
}
