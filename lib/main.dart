import 'package:flutter/material.dart';
import 'package:social_media_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
         floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.transparent, 
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(55, 18, 61, 1),
      ),
      home: const Home()
    );
  }
}
