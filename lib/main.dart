import 'package:flutter/material.dart';
import 'package:myquizapp/screens/homescreen.dart';

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
        // primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          caption: TextStyle(color: Colors.black), // change caption color here
        ),

        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 255, 236, 192), // Set color for AppBar
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
