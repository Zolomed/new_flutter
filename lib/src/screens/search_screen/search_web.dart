import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

List<String> _items = ["Вкусная еда 1", "Вкусная еда 2", "Вкусная еда 3"];

class _SearchScreenState extends State<SearchScreen> {
  void _addItem() {
    setState(() {
      _items.add("Вкусная еда ${_items.length + 1}");
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
          child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_items[index]),
                onTap: () => _removeItem(index),
              );
            },
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
