import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 25,
            color: Colors.indigoAccent,

          ),
        ),
      ),
    );
  }
}
