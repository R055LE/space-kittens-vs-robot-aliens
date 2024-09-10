import 'package:flutter/material.dart';
import 'combat_test_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Choose an Expedition:',
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Combat Test Screen (Stage 0)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CombatTestScreen(),
                  ),
                );
              },
              child: const Text('Stage 0: Combat Test'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for expedition details
              },
              child: const Text('Expedition 1: The Lost Planet'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for expedition details
              },
              child: const Text('Expedition 2: Alien Wreckage'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for expedition details
              },
              child: const Text('Expedition 3: Asteroid Mining'),
            ),
          ],
        ),
      ),
    );
  }
}
