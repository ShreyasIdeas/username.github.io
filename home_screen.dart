import 'package:flutter/material.dart';
import 'cosmic_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CosmicBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Glowing constellation
              ShaderMask(
                shaderCallback: (rect) {
                  return const RadialGradient(
                    colors: [
                      Colors.white,
                      Colors.blueAccent,
                      Colors.transparent,
                    ],
                    radius: 0.8,
                  ).createShader(rect);
                },
                child: Image.asset(
                  'assets/constellation.png',
                  height: 220,
                ),
              ),

              const SizedBox(height: 40),

              // Stylized button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.1),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/unlock');
                },
                child: const Text(
                  'Unlock the Stars',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.5,
                    fontFamily: 'Serif',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

