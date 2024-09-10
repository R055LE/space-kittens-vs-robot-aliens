import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/explore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(const SpaceKittensApp());
  });
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
            image: AssetImage('assets/images/base_camp.png'),  // Background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Flashy "Welcome to the Base Camp" text
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),  // Semi-transparent background
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Welcome to the Base Camp!',
                  style: TextStyle(
                    fontSize: 32,              // Larger font size
                    fontWeight: FontWeight.bold, // Bold text
                    color: Colors.white,       // White text color
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.8), // Dark shadow
                        offset: const Offset(3, 3),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ManageCrewScreen()),
                  );
                },
                child: const Text('Manage Crew'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ExploreScreen()),
                  );
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

class ManageCrewScreen extends StatelessWidget {
  const ManageCrewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Crew'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your Crew:',
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/starter_kitty.png',  // Path to your space kitty image
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'This is your loyal space kitten, ready for battle!',
              style: TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}