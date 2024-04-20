import 'package:flutter_masterclass_advanced_app/models/skill_model.dart';
import 'package:flutter_masterclass_advanced_app/models/stats_mixin.dart';
import 'package:flutter_masterclass_advanced_app/models/vocation_enum.dart';

class Character with Stats {
//constructor
  Character(
      {required this.name,
      required this.slogan,
      required this.vocation,
      required this.id});

  //fields
  final Set<Skill> skills = {};
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;
  final Vocation vocation;

  //getter methods
  bool get isFav => _isFav;

// setter methods
  void toggleIsFaV() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }

  @override
  String toString() {
    return 'Character: {id: $id, name: $name, slogan: $slogan, vocation: $vocation }';
  }
}

//dummy character data

List<Character> characters = [
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
