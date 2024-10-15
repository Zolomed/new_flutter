import 'package:flutter/material.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

List<String> _items = [
  "Просто жесть, какая вкусная еда 1",
  "Просто жесть, какая вкусная еда 2",
  "Просто жесть, какая вкусная еда 3"
];

class _BasketScreenState extends State<BasketScreen> {
  void _addItem() {
    setState(() {
      _items.add("Просто жесть, какая вкусная еда ${_items.length + 1}");
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
          child: ListView.separated(
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_items[index]),
                onTap: () => _removeItem(index),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
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
