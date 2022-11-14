import 'package:flutter/material.dart';

class UiScreenFive extends StatefulWidget {
  const UiScreenFive({Key? key}) : super(key: key);

  @override
  State<UiScreenFive> createState() => _UiScreenFiveState();
}

class _UiScreenFiveState extends State<UiScreenFive> {
  bool fl=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fl==true ? Colors.black : Colors.white,
body: Switch(value: fl, onChanged: (value) {
  setState(() {
    fl=value;
  });
},),
    );
  }
}
