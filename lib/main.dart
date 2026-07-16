import 'package:flutter/material.dart';
import 'package:nafe_coffe/auth/login.dart';
import 'package:nafe_coffe/auth/register.dart';
import 'package:nafe_coffe/screens/home.dart';
import 'package:nafe_coffe/screens/menu.dart';
import 'package:nafe_coffe/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nana coffe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const Menu(),
    );
  }
}
