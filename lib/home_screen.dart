import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: const Text('Random Generator'),
        ),
        body: const HomeScreenBody());
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Welcome to Random Generator!',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        const Text('Check the menu to see all the things that you can generate',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 100,
        ),
        Container(
          alignment: Alignment.center, // use aligment
          child: Image.asset('assets/imgs/linuxlogo.png',
              height: 350, width: 350, fit: BoxFit.cover),
        )
      ],
    ));
  }
}
