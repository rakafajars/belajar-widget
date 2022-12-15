import 'package:flutter/material.dart';

class TextFieldOnChangedWidget extends StatefulWidget {
  const TextFieldOnChangedWidget({super.key});

  @override
  State<TextFieldOnChangedWidget> createState() =>
      _TextFieldOnChangedWidgetState();
}

class _TextFieldOnChangedWidgetState extends State<TextFieldOnChangedWidget> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your Name',
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, $_name'),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
