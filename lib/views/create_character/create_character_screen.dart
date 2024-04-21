import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/services/character_provider.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_gradient_button.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text_field.dart';
import 'package:flutter_masterclass_advanced_app/shared/title_card.dart';
import 'package:flutter_masterclass_advanced_app/shared/vocation_card.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/models/vocation_enum.dart';
import 'package:provider12/provider.dart';
import 'package:uuid/uuid.dart';

class CreateCharacterScreen extends StatefulWidget {
  const CreateCharacterScreen({super.key});

  @override
  State<CreateCharacterScreen> createState() => _CreateCharacterScreenState();
}

class _CreateCharacterScreenState extends State<CreateCharacterScreen> {
  final _characterNameController = TextEditingController();
  final _characterSloganController = TextEditingController();
  Vocation selectedVocation = Vocation.junkie;

  void createCharacter() {
    try {
      //throw error if fields are empty
      if (_characterNameController.text.trim().isEmpty ||
          _characterSloganController.text.trim().isEmpty) {
        throw "Character Name and Slogan fields cannot be empty";
      }

      //add character to character list Provider
      Provider.of<CharacterProvider>(context, listen: false).addCharacter(
        Character(
          name: _characterNameController.text,
          slogan: _characterSloganController.text,
          vocation: selectedVocation,
          id: const Uuid().v4(),
        ),
      );

      //clear text fields
      clearTextFields();

      //pop back to home page
      Navigator.pop(context);
    } catch (error) {
      //show snackbar with errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          showCloseIcon: true,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red[800],
          duration: const Duration(seconds: 2),
          content: Text(error.toString()),
        ),
      );
    }
  }

  void clearTextFields() {
    _characterNameController.clear();
    _characterSloganController.clear();
  }

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _characterNameController;
    _characterSloganController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyTitleText('Create Character'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //welcome message
              const TitleCard(
                  title: 'Welcome New Player',
                  text: 'Create a name & slogan for your character'),
              const SizedBox(height: 30),

              //inputs for name and slogan
              MyTextField(
                controller: _characterNameController,
                labelText: 'Character Name',
                prefixIcon: const Icon(Icons.person),
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: _characterSloganController,
                labelText: 'Enter a Slogan',
                prefixIcon: const Icon(Icons.tag),
              ),
              const SizedBox(height: 20),

              //vocation title
              const TitleCard(
                  title: 'Choose a Vocation',
                  text: 'This determins your available skills'),

              //vocation cards
              VocationCard(
                vocation: Vocation.junkie,
                onTap: updateVocation,
                selected: selectedVocation == Vocation.junkie,
              ),
              VocationCard(
                  vocation: Vocation.ninja,
                  onTap: updateVocation,
                  selected: selectedVocation == Vocation.ninja),
              VocationCard(
                  vocation: Vocation.raider,
                  onTap: updateVocation,
                  selected: selectedVocation == Vocation.raider),
              VocationCard(
                  vocation: Vocation.wizard,
                  onTap: updateVocation,
                  selected: selectedVocation == Vocation.wizard),

              //good luck message
              const TitleCard(
                  title: "Good Luck", text: 'And enjoy the journey...'),

              //create button
              MyGradientButton(
                onPressed: createCharacter,
                child: const MyTitleText('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
