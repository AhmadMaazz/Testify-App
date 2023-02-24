import 'package:flutter/material.dart';

class Questions extends StatefulWidget {

  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List questions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 255, 225),
      appBar: AppBar(
        title: const Text(
          'Testify',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            fontFamily: 'Testify',
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        // backgroundColor: const Color.fromARGB(255, 255, 236, 192),
      ),
      body: Center(
        child: Column(
          children: const [Text('hello world!')],
        ),
      ),
    );
  }
}
