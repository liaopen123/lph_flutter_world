import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWordsWidget extends StatelessWidget{
  RandomWordsWidget( this.name);
  final String name;

  @override
  Widget build(BuildContext context) {

    var words = new WordPair.random();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name+words.toString()),

    );
  }

}