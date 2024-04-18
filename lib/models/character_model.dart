import 'package:flutter_masterclass_advanced_app/models/stats_mixin.dart';

class Character with Stats {
  //fields
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

//constructor
  Character({required this.name, required this.slogan, required this.id});

// setter methods
  void toggleIsFaV() {
    _isFav = !_isFav;
  }

  //getter methods
  bool get isFav => _isFav;
}
