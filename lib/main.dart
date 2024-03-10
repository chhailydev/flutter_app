import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'views/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Register Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginRegisterScreen(),
    );
  }
}

class LoginRegisterScreen extends StatefulWidget {
  @override
  _LoginRegisterScreenState createState() => _LoginRegisterScreenState();
}

class _LoginRegisterScreenState extends State<LoginRegisterScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLogin = true;

  void _toggleLoginRegister() {
    setState(() {
      _isLogin = !_isLogin;
    });
  }

  void _handleLogin() {
    //Implement your login logic here
    print(
        'Loginng in with email: ${_emailController.text} and password: ${_passwordController.text}');

    //For demostration purposes, naviate to the HomePage
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  void _handleRegister() {
    //Implement your register logic here
    print(
        "Registering with email: ${_emailController.text} and password: ${_passwordController.text}");

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isLogin ? 'Login' : 'Register'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: _isLogin
            ? LoginScreen(
                emailController: _emailController,
                passwordController: _passwordController,
                toggleLoginRegister: _toggleLoginRegister,
                handleLogin: _handleLogin,
              )
            : RegisterScreen(
                nameController: _nameController,
                emailController: _emailController,
                passwordController: _passwordController,
                toggleLoginRegister: _toggleLoginRegister,
                handleRegister: _handleRegister),
      ),
    );
  }
}
