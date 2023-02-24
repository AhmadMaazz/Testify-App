import 'package:flutter/material.dart';
import 'package:myquizapp/screens/questions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        // backgroundColor: const Color.fromARGB(255, 255, 236, 192),
      ),
      body: Stack(
        children: [
          Padding(
            // padding: const EdgeInsets.only(left: 150, top: 40),
            padding: const EdgeInsets.only(left: 150, top: 40),
            child: Image.asset(
              'assets/student.png',
              alignment: Alignment.centerLeft,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: size.height * 0.08),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Questions(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(107, 43, 0, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding: const EdgeInsets.all(20)),
                  child: const Text(
                    'Create the Quiz',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Testify',
                      color: Color.fromARGB(255, 255, 236, 192),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.025),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(107, 43, 0, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Text(
                    'Take the Quiz',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Testify',
                      color: Color.fromARGB(255, 255, 236, 192),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
