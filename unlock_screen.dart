import 'package:flutter/material.dart';
import 'cosmic_background.dart';

class UnlockScreen extends StatefulWidget {
  const UnlockScreen({super.key});

  @override
  State<UnlockScreen> createState() => _UnlockScreenState();
}

class _UnlockScreenState extends State<UnlockScreen> {
  final TextEditingController _controller = TextEditingController();
  final String correctCode = "ORION";

  String message = "";

  void checkCode() {
    if (_controller.text.trim().toUpperCase() == correctCode) {
      Navigator.pushNamed(context, '/video');
    } else {
      setState(() {
        message = "The stars whisper: look again.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CosmicBackground(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter the Pattern",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontFamily: 'Serif',
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: _controller,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  hintText: "Constellation Code",
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.15),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 18,
                  ),
                ),
                onPressed: checkCode,
                child: const Text(
                  "Unlock",
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1.2,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                message,
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

