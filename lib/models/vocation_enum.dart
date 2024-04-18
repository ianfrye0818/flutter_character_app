enum Vocation {
  raider(
      title: 'Terminal Raider',
      description: 'A strong and brave warrior',
      weapon: 'Terminal',
      image: 'terminal_raider.jpg',
      ability: 'Shellshock'),
  junkie(
      title: 'Code Junkie',
      description: 'A smart and fast hacker',
      weapon: 'React 99',
      ability: 'Higher Order Overdrive',
      image: 'code_junkie.jpg'),
  ninja(
      title: 'Cyber Ninja',
      description: 'A stealthy and agile assassin',
      weapon: 'Katana',
      ability: 'Shadow Strike',
      image: 'ux_ninja.jpg'),
  wizard(
      title: 'Digital Wizard',
      description: 'A wise and powerful mage',
      weapon: 'Staff',
      ability: 'Magic Missile',
      image: 'algo_wizard.jpg');

  const Vocation(
      {required this.title,
      required this.description,
      required this.image,
      required this.weapon,
      required this.ability});

  final String title;
  final String description;
  final String image;
  final String weapon;
  final String ability;
}
