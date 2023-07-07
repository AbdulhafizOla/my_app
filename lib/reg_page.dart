import 'package:flutter/material.dart';

class RegisterationPage extends StatelessWidget {
    RegisterationPage({super.key});

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _nameController = TextEditingController();

  void _createAccount() {
    String email = _emailController.text;
    String title = _nameController.text;

    print('Email: $email');
    print('Titile: $title');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Create new profile'),
      ),
      body:Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                      hintText: 'Enter title'),
                ),  
      Padding(
        padding:
            const EdgeInsets.all(30),
        child: Column(
          
          children: [
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter your email'),
          ),
          
                const SizedBox(height: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple
                  ),
                  onPressed: _createAccount,
                  child: const Text(
                    'Create',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
