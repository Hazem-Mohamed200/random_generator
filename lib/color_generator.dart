import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class ColorGenerator extends StatelessWidget {
  const ColorGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(title: const Text('Random Color Generator')),
    );
  }
}
