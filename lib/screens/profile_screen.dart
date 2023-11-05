import 'package:flutter/material.dart';
import 'package:tourney/config/dimens.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(8),
        child: const SafeArea(
          child: Column(
            children: [
              Card(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                      ),
                      Text('Prince Dobariya'),
                      Text('asdf@gmail.com')
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Column(
                        children: [
                          Icon(Icons.flutter_dash),
                          Text('matches')
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        children: [
                          Icon(Icons.monetization_on),
                          Text('coin')
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        children: [
                          Icon(Icons.history),
                          Text('History')
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
