// a mixin is a collection of fields that can be used by classes without inheritance.
mixin Stats {
  int _health = 10;
  int _attack = 10;
  int _defense = 10;
  int _skill = 10;
  int _points = 10;

  //getter methods
  int get points => _points;

  Map<String, int> get statsAsMap => {
        'health': _health,
        'attack': _attack,
        'defense': _defense,
        'skill': _skill,
      };

  List<Map<String, String>> get statsAsList => [
        {'title': 'health', 'value': _health.toString()},
        {'title': 'attack', 'value': _attack.toString()},
        {'title': 'defense', 'value': _defense.toString()},
        {'title': 'skill', 'value': _skill.toString()},
      ];

  //methods
  void increaseStat(String stat) {
    if (_points <= 0) return;

    switch (stat) {
      case 'health':
        _health++;
        break;
      case 'attack':
        _attack++;
        break;
      case 'defense':
        _defense++;
        break;
      case 'skill':
        _skill++;
        break;
    }
  }

  void descreaseStat(String stat) {
    switch (stat) {
      case 'health':
        _health = _health > 5 ? _health - 1 : _health;
        break;
      case 'attack':
        _attack = _attack > 5 ? _attack - 1 : _attack;
        break;
      case 'defense':
        _defense = _defense > 5 ? _defense - 1 : _defense;
        break;
      case 'skill':
        _skill = _skill > 5 ? _skill - 1 : _skill;
        break;
    }
    _points++;
  }
}
