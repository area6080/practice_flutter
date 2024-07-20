import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学'),
      ),
      body: Container(
        color: Colors.pink.shade100,
        child: Center(
          child: ElevatedButton(
            child: Text("前の画面に戻る"),
            onPressed: () {
            Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}