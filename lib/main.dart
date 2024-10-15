import 'package:flutter/material.dart';
import 'new_flutter.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _getPlatformHomeScreen() {
    if (kIsWeb) {
      return const WebStartScreen();
    } else if (Platform.isAndroid) {
      return const AndroidStartScreen();
    } else if (Platform.isWindows) {
      return const WindowsStartScreen();
    } else {
      return const Scaffold(
        body: Center(child: Text('Неизвестная платформа')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _getPlatformHomeScreen(),
    );
  }
}
