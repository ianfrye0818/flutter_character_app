import 'package:flutter_masterclass_advanced_app/models/vocation_enum.dart';

class Skill {
  //fields
  final String id;
  final String name;
  final String image;
  final Vocation vocation;

  //constructors
  Skill(
      {required this.name,
      required this.image,
      required this.vocation,
      required this.id});

  final List<Skill> allSkill = [
    //wizards
    Skill(
        id: '1',
        name: 'Brute Force Bolt',
        image: 'bf_bolt.jpg',
        vocation: Vocation.wizard),
    Skill(
        id: '2',
        name: 'Recursive Wave',
        image: 'r_wave.jpg',
        vocation: Vocation.wizard),
    Skill(
        id: '3',
        name: 'Has Beam',
        image: 'h_beam.jpg',
        vocation: Vocation.wizard),
    Skill(
        id: '4',
        name: 'Backtrack',
        image: 'backtrack.jpg',
        vocation: Vocation.wizard),

    //terminal raiders
    Skill(
        id: '5',
        name: 'Lethal Touch',
        image: 'l_touch.jpg',
        vocation: Vocation.raider),
    Skill(
        id: '6',
        name: 'Sudo Blast',
        image: 's_blast.jpg',
        vocation: Vocation.raider),
    Skill(
        id: '7',
        name: 'Full Clear',
        image: 'f_clear.jpg',
        vocation: Vocation.raider),
    Skill(
        id: '8',
        name: 'Support Shell',
        image: 's_shell.jpg',
        vocation: Vocation.raider),

    //code junkies
    Skill(
        id: '9',
        name: 'Infinte Loop',
        image: 'i_loop.jpg',
        vocation: Vocation.junkie),
    Skill(
        id: '10',
        name: 'Type Cast',
        image: 't_cast.jpg',
        vocation: Vocation.junkie),
    Skill(
        id: '11',
        name: 'Encapsulate',
        image: 'encapsulate.jpg',
        vocation: Vocation.junkie),
    Skill(
        id: '12',
        name: 'Copy & Paste',
        image: 'c_paste.jpg',
        vocation: Vocation.junkie),

    //cyber ninjas
    Skill(
        id: '13',
        name: 'Gamify',
        image: 'gamify.jpg',
        vocation: Vocation.ninja),
    Skill(
        id: '14',
        name: 'Heat Map',
        image: 'h_map.jpg',
        vocation: Vocation.ninja),
    Skill(
        id: '15',
        name: 'Wifeframe',
        image: 'wireframe.jpg',
        vocation: Vocation.ninja),
    Skill(
        id: '16',
        name: 'Dark Pattern',
        image: 'd_pattern.jpg',
        vocation: Vocation.ninja),
  ];

  factory Skill.fromJson(Map<String, dynamic> json) => Skill(
        name: json['name'],
        image: json['image'],
        vocation: json['vocation'],
        id: json['id'],
      );
}
