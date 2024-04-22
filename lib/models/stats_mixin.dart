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

  //setters
  void setStats({required int points, required Map<String, dynamic> stats}) {
    _points = points;
    _health = stats['health'];
    _attack = stats['attack'];
    _defense = stats['defense'];
    _skill = stats['skill'];
  }

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
    _points--;
  }

  void descreaseStat(String stat) {
    if (stat == 'health' && _health > 5) {
      _health--;
      _points++;
    }

    if (stat == 'attack' && _attack > 5) {
      _attack--;
      _points++;
    }

    if (stat == 'defense' && _defense > 5) {
      _defense--;
      _points++;
    }

    if (stat == 'skill' && _skill > 5) {
      _skill--;
      _points++;
    }
  }
}
