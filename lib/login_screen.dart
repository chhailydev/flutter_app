import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/views/Home.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback toggleLoginRegister;
  final VoidCallback handleLogin;

  LoginScreen({
    required this.emailController,
    required this.passwordController,
    required this.toggleLoginRegister,
    required this.handleLogin,
  });

  Future<void> _login(BuildContext context) async {
    try {
      final response = await http
          .post(Uri.parse('http://localhost:8000/api/login'), headers: {
        'Client-Key': 'abc168kh_flutter',
        'Token-Key': 'flutter168abc'
      }, body: {
        'email': emailController.text,
        'password': passwordController.text
      });

      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        print("Failed to login: ${response.reasonPhrase}");
      }
    } catch (error) {
      print("Failed to login in: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        const SizedBox(height: 12.0),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
        ),
        const SizedBox(height: 24.0),
        ElevatedButton(
          onPressed: () => _login(context),
          child: const Text('LOGIN'),
        ),
        const SizedBox(height: 12.0),
        TextButton(
          onPressed: toggleLoginRegister,
          child: const Text('Create an account'),
        )
      ],
    );
  }
}
