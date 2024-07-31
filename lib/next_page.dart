import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter大学'),
      ),
      body: Container(
        color: Colors.pink.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              ElevatedButton(
                child: const Text("前の画面に戻る"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// child: Text(name),　　child重複の時はchildren
// child: ElevatedButton(
//   child: Text("前の画面に戻る"),
//   onPressed: () {
//   Navigator.pop(context);
//   },
// ),