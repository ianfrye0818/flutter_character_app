import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/services/character_provider.dart';
import 'package:flutter_masterclass_advanced_app/shared/character_card.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_gradient_button.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/views/create_character/create_character_screen.dart';
import 'package:provider12/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<CharacterProvider>(context, listen: false).fetchCharacters();
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
              child:
                  Consumer<CharacterProvider>(builder: (context, value, child) {
                return ListView.builder(
                  itemCount: value.characters.length,
                  itemBuilder: (_, index) {
                    return CharacterCard(character: value.characters[index]);
                  },
                );
              }),
            ),
            MyGradientButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateCharacterScreen(),
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

// class Sandbox extends StatelessWidget {
//   const Sandbox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sandbox'),
//         backgroundColor: Colors.grey,
//         centerTitle: true,
//       ),
//       body: const Text('Sandbox'),
//     );
//   }
// }
