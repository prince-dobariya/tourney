import 'package:flutter/material.dart';
import 'package:tourney/screens/chat/chat_home.dart';
import 'package:tourney/screens/home_screen.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int selectedIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    Container(),
    const ChatHome()
  ];

  void changePage(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: SafeArea(child: _pages[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: changePage,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'matches',
                icon: Icon(Icons.local_grocery_store_outlined)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
          ]),
    );
  }
}
