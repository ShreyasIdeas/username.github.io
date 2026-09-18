import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'unlock_screen.dart';
import 'video_screen.dart';

void main() {
  runApp(const ConstellationApp());
}

class ConstellationApp extends StatelessWidget {
  const ConstellationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Constellation Key',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/unlock': (context) => const UnlockScreen(),
        '/video': (context) => const VideoScreen(),
      },
    );
  }
}
