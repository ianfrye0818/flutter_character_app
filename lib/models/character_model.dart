import 'package:cloud_firestore/cloud_firestore.dart';
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

  //factory controller // from JSON
  factory Character.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    //get data from snapshot
    final data = snapshot.data()!;

    //make character instance
    Character character = Character(
      name: data['name'],
      slogan: data['slogan'],
      id: snapshot.id,
      vocation: Vocation.values
          .firstWhere((element) => element.toString() == data['vocation']),
    );

    //update skills
    for (String id in data['skills']) {
      Skill skill = allSkills.firstWhere((element) => element.id == id);
      character.updateSkill(skill);
    }

    //set is fav
    if (data['isFav'] == true) {
      character.toggleIsFav();
    }

    //set stats
    character.setStats(points: data['points'], stats: data['stats']);

    //return the character
    return character;
  }

//to json - send data to firestore
  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'slogan': slogan,
      'isFav': _isFav,
      'vocation': vocation.toString(),
      'skills': skills.map((skill) => skill.id).toList(),
      'stats': statsAsMap,
      'points': points,
    };
  }

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
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}
