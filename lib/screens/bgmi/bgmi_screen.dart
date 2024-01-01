import 'package:flutter/material.dart';
import 'package:tourney/screens/bgmi/bgmi_ui.dart';

class BgmiScreen extends StatelessWidget {
  const BgmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) => const BgmiUi(),
      ),
    );
  }
}
