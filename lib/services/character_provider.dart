import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/models/vocation_enum.dart';
import 'package:flutter_masterclass_advanced_app/services/firestore_service.dart';

class CharacterProvider extends ChangeNotifier {
  final List<Character> _characters = [];

  //getter
  get characters => _characters;

  void addCharacter(Character character) {
    FireStoreService.addCharacterToDb(character);
    _characters.add(character);
    notifyListeners();
  }

  void removeCharacter(Character character) {
    _characters.remove(character);
  }

  void updateCharacter(Character character) {}

  void fetchCharacters() async {
    if (_characters.isNotEmpty) return;

    final snapshot = await FireStoreService.getCharactesFromDb();

    for (var doc in snapshot.docs) {
      _characters.add(doc.data());
    }
    notifyListeners();
  }
}
