import 'package:flutter/material.dart';
import '../models/kitty.dart';
import '../services/combat_service.dart';

class CombatTestScreen extends StatefulWidget {
  const CombatTestScreen({super.key});

  @override
  _CombatTestScreenState createState() => _CombatTestScreenState();
}

class _CombatTestScreenState extends State<CombatTestScreen> {
  final List<String> _combatLog = []; // Store combat logs here

  @override
  void initState() {
    super.initState();
    _startCombat();  // Start combat when the screen initializes
  }

  void _startCombat() {
    // Create two kitties for combat
    Kitty starterKitty = Kitty(
      name: 'Starter Kitty',
      health: 100,
      attack: 20,
      defense: 5,
      speed: 10,
    );

    Kitty alienKitty = Kitty(
      name: 'Alien Kitty',
      health: 80,
      attack: 15,
      defense: 8,
      speed: 8,
    );

    // Start the combat simulation and update logs on screen
    CombatService combatService = CombatService();
    combatService.simulateCombatWithLogs(starterKitty, alienKitty, _addLog);
  }

  // Function to add combat logs and refresh the UI
  void _addLog(String log) {
    setState(() {
      _combatLog.add(log);  // Add new log and refresh screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stage 0: Combat Test'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Combat Log:',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: _combatLog.length,
                  itemBuilder: (context, index) {
                    return Text(
                      _combatLog[index],
                      style: const TextStyle(color: Colors.white),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
