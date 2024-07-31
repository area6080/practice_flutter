import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key, required this.name});
  final String name;

  static final _formKey = GlobalKey<FormState>();
//  フォームキーを定義

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KBOYのFlutter大学'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.pink.shade100,
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter a search term',
                      // border: InputBorder.none,
                  ),
                  autofocus: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20), // 子ウィジェット間のスペース
                Text(
                  name,
                  style: const TextStyle(fontSize: 24), // テキストのサイズを大きくする
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),

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