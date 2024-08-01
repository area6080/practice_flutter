import 'package:flutter/material.dart';
import 'package:practice/next_page.dart';
import 'package:practice/third_page.dart';
import 'package:practice/fourth_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
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
        title: const Text('KBOYのFlutter幼稚園'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('images/1.png'),
            // 画像を使うにはpubspec.yamlへ記述が必要
            const Icon(
              Icons.star,
              color: Colors.green,
              size: 70,
            ),
            const Text(
              '住吉大社',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lime,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20), // 子ウィジェット間のスペース
            ElevatedButton(
              child: const Text("次の画面へ"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NextPage(name: "RadioCrazy"),
                    ),
                    // ここにボタンを押した時に呼ばれるコードを書く
                );
              },
            ),
            ElevatedButton(
              child: const Text("3rd画面へ"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text("youtube画面へ"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FourthPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

