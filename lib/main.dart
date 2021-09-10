import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/screens.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TradeSpecifix APP',
      theme: ThemeData(
        textTheme:
                GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CreateNewAccount(),
    );
  }
}
