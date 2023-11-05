import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [_appbar()],
      ),
    );
  }

  Widget _appbar() {
    return SizedBox(
      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Hey Guest!'),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 5),
              decoration: BoxDecoration(
              color: Colors.amber, 
              borderRadius: BorderRadius.circular(5)
              ),
              child: const Row(
            children: [Icon(Icons.attach_money), Text('200')],
          ))
        ],
      ),
    );
  }
}
