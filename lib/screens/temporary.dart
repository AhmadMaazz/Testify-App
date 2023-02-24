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
        title: const Text('Quiz Screen'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _questionController,
              decoration: const InputDecoration(
                labelText: 'Question',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a question';
                }
                return null;
              },
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _optionController,
                    decoration: const InputDecoration(
                      labelText: 'Option (True/False)',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an option';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_optionController.text.toLowerCase() == 'true') {
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
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _questions.length,
                itemBuilder: (context, index) {
                  final question = _questions.keys.elementAt(index);
                  final answer = _questions.values.elementAt(index);
                  return ListTile(
                    title: Text(question),
                    subtitle: Text(answer.toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
