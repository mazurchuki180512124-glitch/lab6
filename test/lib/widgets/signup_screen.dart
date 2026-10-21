import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  void _showDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: const Text('Message'),
          content: Text(message),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                  height: 80,
                ),
                const SizedBox(height: 24),
                const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Name:", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xFFEFEFEF),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),
                const SizedBox(height: 12),
                const Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xFFEFEFEF),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),
                const SizedBox(height: 12),
                const Text("Password:", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xFFEFEFEF),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _showDialog(context, "Need to implement"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2C5282),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text("Sign up", style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 8),

                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}