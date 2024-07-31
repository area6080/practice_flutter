import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KBOYのFlutter王国'),
        centerTitle: true,
      ),
    body: Container(
      color: Colors.lightBlue.shade50,
      ),
    );
  }
}