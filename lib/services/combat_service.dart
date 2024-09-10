import '../models/kitty.dart';

class CombatService {
  // Method to simulate combat and update logs in real time
  void simulateCombatWithLogs(Kitty kitty1, Kitty kitty2, Function(String) addLog) {
    addLog('Combat begins between ${kitty1.name} and ${kitty2.name}!');

    while (kitty1.health > 0 && kitty2.health > 0) {
      // Kitty1 attacks Kitty2
      takeTurn(kitty1, kitty2, addLog);

      // If Kitty2 is still alive, it counterattacks
      if (kitty2.health > 0) {
        takeTurn(kitty2, kitty1, addLog);
      }
    }

    // End of combat
    if (kitty1.health <= 0) {
      addLog('${kitty1.name} has been defeated! ${kitty2.name} wins!');
    } else {
      addLog('${kitty2.name} has been defeated! ${kitty1.name} wins!');
    }
  }

  // Handle a combat turn and update log
  void takeTurn(Kitty attacker, Kitty defender, Function(String) addLog) {
    int damage = attacker.attack - defender.defense;
    if (damage < 0) damage = 0;
    defender.health -= damage;
    addLog('${attacker.name} attacks ${defender.name} for $damage damage!');

    if (defender.health <= 0) {
      addLog('${defender.name} has been defeated!');
    }
  }
}
