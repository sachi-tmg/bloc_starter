import 'package:flutter/material.dart';

class StudentBlocView extends StatelessWidget {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _addressController = TextEditingController();

  final _formKey2 = GlobalKey<FormState>();

  StudentBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student BLoc'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          key: _formKey2,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an age';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
              SizedBox(height: 8),
              Text('Output'),
            ],
          ),
        ),
      ),
    );
  }
}
