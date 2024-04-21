import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_masterclass_advanced_app/firebase_options.dart';
import 'package:flutter_masterclass_advanced_app/services/character_provider.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme.dart';
import 'package:flutter_masterclass_advanced_app/views/home/home_screen.dart';
import 'package:provider12/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider<CharacterProvider>(
      create: (context) => CharacterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Advanced App',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: primaryTheme,
    );
  }
}
