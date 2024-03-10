import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shop_app/views/Home.dart';


class RegisterScreen extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback toggleLoginRegister;
  final VoidCallback handleRegister;

  RegisterScreen({
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.toggleLoginRegister,
    required this.handleRegister,
  });

  Future<void> _register(BuildContext context) async {
    try {
      final response = await http
          .post(Uri.parse('http://localhost:8000/api/register'), headers: {
        'Client-Key': 'abc168kh_flutter',
        'Token-Key': 'flutter168abc'
      }, body: {
        'username': nameController.text,
        'email': emailController.text,
        'password': passwordController.text,
      });

      if (response.statusCode == 200) {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        print("Failed to log in: ${response.reasonPhrase}");
      }
    } catch (e) {
      print("Failed to register in: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: nameController,
          decoration: const InputDecoration(
            labelText: 'Username',
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        ElevatedButton(
          onPressed: () => _register(context),
          child: const Text('Register'),
        ),
        const SizedBox(
          height: 12.0,
        ),
        TextButton(
          onPressed: toggleLoginRegister,
          child: const Text('Already have an account? Login'),
        )
      ],
    );
  }
}
