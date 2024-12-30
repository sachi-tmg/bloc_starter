import 'package:flutter/material.dart';

class ArithmeticBlocView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();

  ArithmeticBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Bloc'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter first number',
              ),
              controller: firstNumberController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter second number',
              ),
              controller: secondNumberController,
            ),
            SizedBox(height: 20),
            Text('Output'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // final int firstNumber = int.parse(firstNumberController.text);
                // final int secondNumber = int.parse(secondNumberController.text);
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // final int firstNumber = int.parse(firstNumberController.text);
                // final int secondNumber = int.parse(secondNumberController.text);
              },
              child: Text('Subtract'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // final int firstNumber = int.parse(firstNumberController.text);
                // final int secondNumber = int.parse(secondNumberController.text);
              },
              child: Text('Multiply'),
            ),
          ],
        ),
      ),
    );
  }
}
