import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Корзина',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
