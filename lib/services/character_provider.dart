import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/models/vocation_enum.dart';

class CharacterProvider extends ChangeNotifier {
  final List<Character> _characters = [
    Character(
        id: '1', name: 'Klara', slogan: 'Kapumf!', vocation: Vocation.wizard),
    Character(
        id: '2',
        name: 'Jonny',
        slogan: 'Light me up...',
        vocation: Vocation.junkie),
    Character(
        id: '3',
        name: 'Crimson',
        slogan: 'Fire in the hole!',
        vocation: Vocation.raider),
    Character(
        id: '4',
        name: 'Shaun',
        slogan: 'Alright then gang',
        vocation: Vocation.ninja),
  ];

  //getter
  get characters => _characters;

  void addCharacter(Character character) {
    _characters.add(character);
    notifyListeners();
  }

  void removeCharacter(Character character) {
    _characters.remove(character);
  }

  void updateCharacter(Character character) {}
}
