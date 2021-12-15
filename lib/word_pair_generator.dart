import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class WordPairGenerator extends StatelessWidget {
  const WordPairGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Word Pair Generator'),
      ),
    );
  }
}
