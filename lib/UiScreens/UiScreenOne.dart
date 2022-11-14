import 'package:flutter/material.dart';
import 'package:jklmapp/UiScreens/uiScreenFive.dart';
import 'package:jklmapp/UiScreens/uiScreenFour.dart';
import 'package:jklmapp/UiScreens/uiScreenThree.dart';
import 'package:jklmapp/UiScreens/uiScreenTwo.dart';

class UiScreenOne extends StatefulWidget {
  const UiScreenOne({Key? key}) : super(key: key);

  @override
  State<UiScreenOne> createState() => _UiScreenOneState();
}

class _UiScreenOneState extends State<UiScreenOne> {
  List screens=[
    UiScreenTwo(),
   UiScreenThree(),
    UiScreenFour(),
    UiScreenFive()

  ];
  int index=0;
bool valuee=false;
  @override
  Widget build(BuildContext context) {
    return Material(

      child: Scaffold(
        body: screens[index],
        drawer: Container(
          child: Center(
            child: Switch(
              value: valuee,
              onChanged: (value) {
                setState(() {
                  value=value;
                });
              },
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index=value;
              });
            },
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit,color: Colors.red,size: 24,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert_sharp,color: Colors.red,size: 24,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box,color: Colors.red,size: 24,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_card_sharp,color: Colors.red,size: 24,),label: ''),
        ]),
      ),
    );
  }
}
