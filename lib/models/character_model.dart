class CharacterModel {
  //fields
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

//constructor
  CharacterModel({required this.name, required this.slogan, required this.id});

// setter methods
  void toggleIsFaV() {
    _isFav = !_isFav;
  }
}
