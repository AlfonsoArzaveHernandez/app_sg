import 'package:flutter/material.dart';
import 'package:app_sg/screens/main_login_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MainLoginScreen()
    );
  }
}

