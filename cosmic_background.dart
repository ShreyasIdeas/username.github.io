import 'package:flutter/material.dart';

class CosmicBackground extends StatelessWidget {
  final Widget child;

  const CosmicBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0A0F29), // deep navy
            Color(0xFF1B1F3B), // midnight blue
            Color(0xFF2A2E52), // cosmic purple
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.25,
              child: Image.asset(
                'assets/stars.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
