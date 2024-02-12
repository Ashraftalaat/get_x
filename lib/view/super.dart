import 'package:flutter/material.dart';

class Super extends StatelessWidget {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('super'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('super')),
          ],
        ),
      ),
    );
  }
}
