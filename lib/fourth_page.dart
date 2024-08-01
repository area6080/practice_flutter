import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  List<String> get entries => <String>['流布井', 'ルフィ', 'RUFI'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'youtube',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black45,
        centerTitle: true,
        actions: const <Widget>[
          Icon(Icons.video_call),
          SizedBox(width: 16),
          //８の倍数がいいらしい
          Icon(Icons.search),
          SizedBox(width: 16),
          Icon(Icons.menu),
        ],
      ),
      body: Container(
        color: Colors.black38,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh-Y7rgTcW5NdDkxvwMW4Gdj2Q3G3lZVBvHHC10A3T_Iwxj0257NbTbdhvWKFOqn7nxXw6-V4P_0VFuJZ_5cQSDPxlazFKTD9N-d1A0IrX0k7LoaVpG3X9IwQ48H0zfXTJOT1JntRr0Lq3o/s400/onepiece01_luffy.png',
                    ),
                    SizedBox(width: 16),
                    Text(
                      entries[index],
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}



