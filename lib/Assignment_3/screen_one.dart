import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int _currentIndex = 0;

  final List<Map<String, String>> _planets = [
    {'name': 'Mercury', 'image': 'assets/images/mercury.png'},
    {'name': 'Earth', 'image': 'assets/images/earth 1.png'},
    {'name': 'Jupiter', 'image': 'assets/images/jupiter.png'},
  ];

  void _nextPlanet() {
    setState(() {
      if (_currentIndex < _planets.length - 1) {
        _currentIndex++;
      }
    });
  }

  void _previousPlanet() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0E0E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header Image Container
              Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Rectangle 4.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Which planet\nwould you like to explore?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              // Planet Image Display
              Center(
                child: Image.asset(
                  _planets[_currentIndex]['image']!,
                  height: 280,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      height: 280,
                      child: Icon(Icons.public, size: 100, color: Colors.white24),
                    );
                  },
                ),
              ),
              const Spacer(),
              // Navigation Row with Planet Name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: _previousPlanet,
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFFEE403D),
                      padding: const EdgeInsets.all(12),
                    ),
                  ),
                  Text(
                    _planets[_currentIndex]['name']!,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: _nextPlanet,
                    icon: const Icon(Icons.arrow_forward),
                    color: Colors.white,
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFFEE403D),
                      padding: const EdgeInsets.all(12),
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Explore Planet Button to Screen Two
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/screen_two',
                    arguments: _planets[_currentIndex],
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEE403D),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore ${_planets[_currentIndex]['name']}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}