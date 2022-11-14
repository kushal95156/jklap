import 'package:flutter/material.dart';

class UiScreenElven extends StatefulWidget {
  const UiScreenElven({Key? key}) : super(key: key);

  @override
  State<UiScreenElven> createState() => _UiScreenElvenState();
}

class _UiScreenElvenState extends State<UiScreenElven> {
  int value=0;
  void rate(int val){
    setState(() {
      value=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Center(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  return rate(1);
                },
                child: Icon(Icons.star,color: value >=1?Colors.purpleAccent:Colors.grey ),
              ),GestureDetector(
                onTap: () {
                  return rate(2);
                },
                child: Icon(Icons.star,color: value >=2?Colors.purpleAccent:Colors.grey ),
              ),GestureDetector(
                onTap: () {
                  return rate(3);
                },
                child: Icon(Icons.star,color: value >=3?Colors.purpleAccent:Colors.grey ),
              ),GestureDetector(
                onTap: () {
                  return rate(4);
                },
                child: Icon(Icons.star,color: value >=4?Colors.purpleAccent:Colors.grey ),
              ),GestureDetector(
                onTap: () {
                  return rate(5);
                },
                child: Icon(Icons.star,color: value >=5?Colors.purpleAccent:Colors.grey ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
