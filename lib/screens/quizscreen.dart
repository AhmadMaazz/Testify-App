import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final Map<String, String> quiz1 = {
    "What is the capital of France?": "Paris",
    "Which country is the largest by area?": "Russia",
    "What is the tallest mammal?": "Giraffe",
    "Which planet is known as the Red Planet?": "Mars",
    "What is the currency of Japan?": "Yen",
    "Who painted the Mona Lisa?": "Leonardo da Vinci",
    "What is the largest organ of the human body?": "Skin",
    "What is the smallest country in the world?": "Vatican City",
    "What is the fastest land animal?": "Cheetah",
    "What is the boiling point of water in degrees Celsius?": "100",
  };

  Map<String, bool> quiz2 = {
    "Is the earth flat?": false,
    "Is water wet?": true,
    "Is chocolate poisonous for dogs?": true,
    "Is the capital of France Madrid?": false,
    "Can birds fly backwards?": false,
    "Is the moon a planet?": false,
    "Is the Great Wall of China visible from space?": false,
    "Is the sky blue because of the reflection of the ocean?": false,
    "Can humans breathe underwater?": false,
    "Is the sun a planet?": false,
  };

  final Map<String, bool> quiz3 = {
    'The tallest mammal in the world is the giraffe.': true,
    'The human body has four lungs.': false,
    'The Great Barrier Reef is located in Australia.': true,
    'Sharks are mammals.': false,
    'The currency of Japan is the yen.': true,
    'The biggest planet in our solar system is Mars.': false,
    'An adult human has 32 teeth.': false,
    'The Statue of Liberty was gifted to the United States by France.': true,
    'The human heart has four chambers.': false,
    'The capital of Canada is Toronto.': false,
  };

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
