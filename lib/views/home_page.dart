import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/components/character_card.dart';
import 'package:flutter_masterclass_advanced_app/components/my_gradient_button.dart';
import 'package:flutter_masterclass_advanced_app/components/my_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List characters = [
    'mario',
    'luigi',
    'peach',
    'toad',
    'bowser',
    'koopa',
    'yoshi'
  ];

  void addNewCharacter(String character) {
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
                  addNewCharacter('Ian');
                },
                child: const MyTitleText('Add New'))
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
