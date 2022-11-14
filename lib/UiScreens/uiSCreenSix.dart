import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiScreenSix extends StatefulWidget {
  const UiScreenSix({Key? key}) : super(key: key);

  @override
  State<UiScreenSix> createState() => _UiScreenSixState();
}

class _UiScreenSixState extends State<UiScreenSix> {
  List colors=[
    Colors.purpleAccent,
    Colors.blue,
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.orangeAccent,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.black87,
  ];
  Color currentColor=Colors.red;
  void changeColor(){
    var rnd=Random().nextInt(colors.length);
    setState(() {
      currentColor=colors[rnd];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 500,
              width: 300,
              color: currentColor,

            ),
            CupertinoButton(child: Text('Change'), onPressed: () {
              changeColor();
            },)
          ],
        ),
      ),
    );
  }
}
