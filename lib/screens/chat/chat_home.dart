import 'package:flutter/material.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User"),),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const ListTile(title: Text("Prince"),trailing: Text('26/1/2024'),),)
    );
  }
}