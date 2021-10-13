import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  final _random = Random();
  List<int> _foo = [];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    widget._foo = [255, 255, 255, 255];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          widget._foo[0], widget._foo[1], widget._foo[2], widget._foo[3]),
      body: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          color: Colors.transparent, // Without this parametr size of Container contains only child borders; heigth and width MediaQuerry doesn't work too
          child: Text('Hey there'),
        ),
        onTap: () {
          setState(() {
            widget._foo = [
              widget._random.nextInt(256),
              widget._random.nextInt(256),
              widget._random.nextInt(256),
              widget._random.nextInt(256)
            ];
          });
        },
      ),
    );
  }
}
