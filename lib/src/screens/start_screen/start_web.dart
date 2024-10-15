import 'package:flutter/material.dart';
import 'export_web.dart';

class WebStartScreen extends StatefulWidget {
  const WebStartScreen({super.key});

  @override
  State<WebStartScreen> createState() => WebStartScreenState();
}

class WebStartScreenState extends State<WebStartScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    SearchScreen(),
    BasketScreen(),
    AccountScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Еда'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: 'Главная'),
            Tab(icon: Icon(Icons.search), text: 'Поиск'),
            Tab(icon: Icon(Icons.shopping_basket), text: 'Корзина'),
            Tab(icon: Icon(Icons.account_circle), text: 'Аккаунт'),
            Tab(icon: Icon(Icons.settings), text: 'Настройки'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _screens,
      ),
    );
  }
}
