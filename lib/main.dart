import 'package:flutter/material.dart';
import 'screens/favourate.dart';
import 'screens/hotupdates.dart';
import 'screens/main_screen.dart';

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
      
      home:MainScreen(),
    );
  }
}
