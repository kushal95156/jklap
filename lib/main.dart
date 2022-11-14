import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jklmapp/UiScreens/UiScreenOne.dart';
import 'package:jklmapp/provider/appState.dart';
import 'package:provider/provider.dart';

import 'UiScreenTen.dart';
import 'UiScreens/UiScreeSeven.dart';
import 'UiScreens/UiScreenNine.dart';
import 'UiScreens/UiScreenTwel.dart';
import 'UiScreens/uiSCreenElve.dart';
import 'UiScreens/uiSCreenSix.dart';
import 'UiScreens/uiScreenFive.dart';
import 'UiScreens/uiScreenFour.dart';
import 'UiScreens/uiScreenThree.dart';
import 'UiScreens/uiScreenTwo.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool lin=true;
  List screens=[
    UiScreenTwo(),
    UiScreenThree(),
    UiScreenFour(),
    UiScreenFive()

  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => AppState(),)
    ],
    child: MaterialApp(
      theme:  ThemeData.light(),
      home: UiScreenSix(),

      // home: Scaffold(
      //   appBar: AppBar(),
      //   drawer: Container(
      //     child: Switch(
      //       onChanged: (value) {
      //         setState(() {
      //           lin=value;
      //         });
      //       },
      //       value:lin ,
      //     ),
      //   ),
      //   body:screens[index] ,
      //     bottomNavigationBar: BottomNavigationBar(
      //         currentIndex: index,
      //         onTap: (value) {
      //           setState(() {
      //             index=value;
      //           });
      //         },
      //         items: [
      //           BottomNavigationBarItem(icon: Icon(Icons.ac_unit,color: Colors.red,size: 24,),label: ''),
      //           BottomNavigationBarItem(icon: Icon(Icons.add_alert_sharp,color: Colors.red,size: 24,),label: ''),
      //           BottomNavigationBarItem(icon: Icon(Icons.add_box,color: Colors.red,size: 24,),label: ''),
      //           BottomNavigationBarItem(icon: Icon(Icons.add_card_sharp,color: Colors.red,size: 24,),label: ''),
      //         ])
      // ),
    ),);
  }
}
