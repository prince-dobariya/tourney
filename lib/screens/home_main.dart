import 'package:flutter/material.dart';
import 'package:tourney/screens/home_screen.dart';
import 'package:tourney/screens/profile_screen.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            const HomeScreen(),
            Container(),
            const ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
        BottomNavigationBarItem(label: 'p',icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'p',icon: Icon(Icons.local_grocery_store_outlined)),
        BottomNavigationBarItem(label: 'p',icon: Icon(Icons.person)),
      ]),
    );
  }
}
