import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class WordPairGenerator extends StatelessWidget {
  const WordPairGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Word Pair Generator'),
      ),
    );
  }
}
