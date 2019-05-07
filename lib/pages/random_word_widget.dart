import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
// https://pub.dev/ 包管理
class RandomWordsWidget extends StatelessWidget {
  final wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        wordPair.asPascalCase.toString(),
        style: TextStyle(
          fontSize: 22,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
