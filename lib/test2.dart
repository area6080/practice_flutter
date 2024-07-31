import 'package:flutter/material.dart';
import 'package:practice/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent.shade100),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key}); // const コンストラクタを追加

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter幼稚園'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('images/1.png'),
            // 画像を使うにはpubspec.yamlへ記述が必要
            Icon(
              Icons.star,
              color: Colors.green,
              size: 70,
            ),
            ElevatedButton(
              child: Text("次の画面へ"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NextPage(name: "RadioCrazy")),
                    // ここにボタンを押した時に呼ばれるコードを書く
                );
              },
            ),
            Text(
              '住吉大社',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lime,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

