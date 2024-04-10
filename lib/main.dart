import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme.dart';
import 'package:flutter_masterclass_advanced_app/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Advanced App',
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: primaryTheme,
    );
  }
}
