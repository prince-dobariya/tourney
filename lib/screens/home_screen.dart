import 'package:flutter/material.dart';
import 'package:tourney/config/dimention.dart';
import 'package:tourney/screens/bgmi/bgmi_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tourney'),
        bottom: TabBar.secondary(controller: _tabController, tabs: const [
          Tab(text: 'OnGoing'),
          Tab(text: 'Upcoming'),
          Tab(text: 'Closed'),
        ]),
      ),
      drawer: const Drawer(),
      body: TabBarView(
        controller: _tabController,
        children: const [
        BgmiScreen(),Text("matches"),Text("chats")
      ]),
    );
  }
}
