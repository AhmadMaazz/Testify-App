import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final _formKey = GlobalKey<FormState>();
  final _questionController = TextEditingController();
  final _optionController = TextEditingController();
  final _questions = <String, bool>{};

  @override
  void dispose() {
    _questionController.dispose();
    _optionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 236, 192),
                      borderRadius: BorderRadius.circular(25)),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _questionController,
                            cursorColor: Colors.black,
                            cursorHeight: 20,
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                gapPadding: 5,
                              ),
                              labelText: 'Question',
                              labelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(20),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a question';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _optionController,
                            cursorColor: Colors.black,
                            cursorHeight: 20,
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                gapPadding: 5,
                              ),
                              labelText: 'Option (True/False)',
                              labelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(20),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a question';
                              }
                              return null;
                            },
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          onPressed: () {
                            if (_optionController.text.toLowerCase() ==
                                'true') {
                              _questions[_questionController.text] = true;
                            } else if (_optionController.text.toLowerCase() ==
                                'false') {
                              _questions[_questionController.text] = false;
                            }
                            _optionController.clear();
                            _questionController.clear();
                            setState(() {}); // rebuild the widget tree
                          },
                          child: const Text('Next'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
