import 'package:flutter/material.dart';

void main() {
  runApp(const SpaceKittensApp());
}

class SpaceKittensApp extends StatelessWidget {
  const SpaceKittensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Kittens vs. Robot Aliens',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Space Kittens vs. Robot Aliens'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Space Kittens vs. Robot Aliens!',
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BaseCampScreen()),
                );
              },
              child: const Text('Enter Base Camp'),
            ),
          ],
        ),
      ),
    );
  }
}

class BaseCampScreen extends StatelessWidget {
  const BaseCampScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/images/base_camp.png'), // Path to your image
            fit: BoxFit
                .cover, // Makes the image stretch to cover the full screen
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to the Base Camp!',
                style: TextStyle(fontSize: 24, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Placeholder for navigating to the Inventory screen
                },
                child: const Text('View Inventory'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Placeholder for crew management
                },
                child: const Text('Manage Crew'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Placeholder for the exploration button
                },
                child: const Text('Explore'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
