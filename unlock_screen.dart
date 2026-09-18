import 'package:flutter/material.dart';

class UnlockScreen extends StatefulWidget {
  const UnlockScreen({super.key});

  @override
  State<UnlockScreen> createState() => _UnlockScreenState();
}

class _UnlockScreenState extends State<UnlockScreen> {
  final TextEditingController _controller = TextEditingController();
  final String correctCode = "ORION"; // change this to your constellation

  String message = "";

  void checkCode() {
    if (_controller.text.trim().toUpperCase() == correctCode) {
      Navigator.pushNamed(context, '/video');
    } else {
      setState(() {
        message = "Look closely at the stars.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter the Pattern")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Constellation Code",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkCode,
              child: const Text("Unlock"),
            ),
            const SizedBox(height: 20),
            Text(message, style: const TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
