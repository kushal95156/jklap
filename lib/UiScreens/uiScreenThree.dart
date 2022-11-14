import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class UiScreenThree extends StatefulWidget {
  const UiScreenThree({Key? key}) : super(key: key);

  @override
  State<UiScreenThree> createState() => _UiScreenThreeState();
}

class _UiScreenThreeState extends State<UiScreenThree> {
  bool valu=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: valu==true ? Colors.black:Colors.white,
      body: Center(
        child: Switch(value: valu, onChanged: (bool value) {
          setState(() {
            valu=value;
          });
        },

        ),
      ),
    );
  }
}
