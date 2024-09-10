// lib/models/kitty.dart

class Kitty {
  String name;
  int health;
  int attack;
  int defense;
  int speed;

  Kitty({
    required this.name,
    required this.health,
    required this.attack,
    required this.defense,
    required this.speed,
  });

  // Method for basic attack
  void performBasicAttack(Kitty enemy) {
    int damage = this.attack - enemy.defense;
    if (damage < 0) damage = 0;
    enemy.health -= damage;
    print('${this.name} attacks ${enemy.name} for $damage damage!');
  }
}
