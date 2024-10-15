import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void triggerVibration() async {
    if (await Vibration.hasVibrator() ?? false) {
      Vibration.vibrate(duration: 500);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Настройки',
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              triggerVibration();
            },
            child: const Text('Нажмите для вибрации'),
          ),
        ],
      ),
    );
  }
}
