import 'package:flutter/material.dart';
import 'package:random_generator/home_screen.dart';
import 'package:random_generator/word_pair_generator.dart';
import 'color_generator.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: Colors.deepPurple[400],
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                drawerItem(
                    text: 'Home', onClicked: () => selectPage(context, 2)),
                const Divider(
                  height: 20.0,
                  thickness: 0.7,
                  color: Colors.white,
                  indent: 15.0,
                  endIndent: 15.0,
                ),
                drawerItem(
                    text: 'Color Generator',
                    onClicked: () => selectPage(context, 0)),
                const SizedBox(
                  height: 10,
                ),
                drawerItem(
                    text: 'Word Pair Generator',
                    onClicked: () => selectPage(context, 1)),
              ],
            )));
  }
}

Widget drawerItem({required String text, VoidCallback? onClicked}) {
  return ListTile(
    title: Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        )),
    leading: const Icon(
      Icons.circle,
      color: Colors.white,
    ),
    onTap: onClicked,
  );
}

void selectPage(BuildContext context, int id) {
  Navigator.pop(context);
  switch (id) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ColorGenerator()),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WordPairGenerator()),
      );
      break;
    case 2:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      break;
  }
}
