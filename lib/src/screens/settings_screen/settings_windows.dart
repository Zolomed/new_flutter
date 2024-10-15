import 'dart:io';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<String> getFilePath() async {
    final directory = 'Путь к текущей директории: ${Directory.current.path}';
    return directory;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getFilePath(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Ошибка при получении пути'));
        } else {
          return Center(
            child: Text(
              snapshot.data ?? 'Не удалось получить путь',
              style: const TextStyle(fontSize: 24),
            ),
          );
        }
      },
    );
  }
}
