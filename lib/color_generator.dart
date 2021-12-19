import 'dart:math';
import 'drawer_menu.dart';
import 'package:flutter/material.dart';

class ColorGenerator extends StatefulWidget {
  const ColorGenerator({Key? key}) : super(key: key);

  @override
  State<ColorGenerator> createState() => _ColorGeneratorState();
}

class _ColorGeneratorState extends State<ColorGenerator> {
  Color _color = randomColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(title: const Text('Random Color Generator')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
                child: drawColor(
                    color: _color = randomColor(),
                    colorCode: _color.toString(),
                    id: 1));
          } else {
            return Container(
                child: drawColor(
                    color: _color = randomColor(),
                    colorCode: _color.toString(),
                    id: 0));
          }
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

Color randomColor() {
  final _random = Random();
  return Color.fromARGB(_random.nextInt(256), _random.nextInt(256),
      _random.nextInt(256), _random.nextInt(256));
}

Widget drawColor(
    {required Color color, required String colorCode, required int id}) {
  if (id == 0) {
    return Container(
        color: color,
        height: 500,
        width: 500,
        child: Tooltip(
          showDuration: const Duration(seconds: 1),
          waitDuration: const Duration(milliseconds: 2),
          message: colorCode,
        ));
  } else {
    return Container(
        color: color,
        height: 500,
        width: 500,
        child: Tooltip(
          showDuration: const Duration(seconds: 1),
          waitDuration: const Duration(milliseconds: 2),
          message: colorCode,
          child: Center(
            child: Text(
              'Tap and Hold for Color Code',
              style: TextStyle(
                  color: ((0.299 * color.red) +
                              (0.587 * color.green) +
                              (0.114 * color.blue) >
                          128
                      ? Colors.black
                      : Colors.white),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
