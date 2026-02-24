import 'package:flutter/material.dart';

import 'package:smart_form_validator/roopa_form_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValidatorTestPage(),
    );
  }
}

class ValidatorTestPage extends StatefulWidget {
  const ValidatorTestPage({super.key});

  @override
  State<ValidatorTestPage> createState() => _ValidatorTestPageState();
}

class _ValidatorTestPageState extends State<ValidatorTestPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Smart Form Validator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Email Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => EmailValidator.validate(value),
              ),

              const SizedBox(height: 20),

              // Password Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => PasswordValidator.validate(value),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("All fields valid ✅")),
                    );
                  }
                },
                child: const Text("Validate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
