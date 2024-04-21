import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/shared/character_card.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_gradient_button.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/views/create_character/create_character_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void addNewCharacter(Character character) {
    setState(() {
      characters.add(character);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyTitleText('Your Characters'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  return CharacterCard(character: characters[index]);
                },
              ),
            ),
            MyGradientButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CreateCharacterScreen(addCharacter: addNewCharacter),
                  ),
                );
              },
              child: const MyTitleText('Add New'),
            ),
          ],
        ),
      ),
    );
  }
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: const Text('Sandbox'),
    );
  }
}
