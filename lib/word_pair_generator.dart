import 'drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class WordPairGenerator extends StatefulWidget {
  const WordPairGenerator({Key? key}) : super(key: key);

  @override
  State<WordPairGenerator> createState() => _WordPairGeneratorState();
}

class _WordPairGeneratorState extends State<WordPairGenerator> {
  // ignore: unused_field
  String _text = WordPair.random().asPascalCase;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Word Pair Generator'),
      ),
      body: buildList(_text),
    );
  }
}

Widget buildList(String _text) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return buildItem(_text = WordPair.random().asPascalCase);
    },
    padding: const EdgeInsets.all(10),
  );
}

Widget buildItem(String wordPair) {
  return ListTile(title: Text(wordPair));
}
