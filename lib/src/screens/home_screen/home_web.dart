import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> _items = ["Еда 1", "Еда 2", "Еда 3"];

class _HomeScreenState extends State<HomeScreen> {
  void _addItem() {
    setState(() {
      _items.add("Еда ${_items.length + 1}");
    });
  }

  void _removeItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(_items.length, (index) {
                return ListTile(
                  title: Text(_items[index]),
                  onTap: () => _removeItem(index),
                );
              }),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _addItem,
          child: const Text('Добавить еды'),
        ),
      ],
    );
  }
}
