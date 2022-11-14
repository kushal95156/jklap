import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiScreenSeven extends StatefulWidget {
  const UiScreenSeven({Key? key}) : super(key: key);

  @override
  State<UiScreenSeven> createState() => _UiScreenSevenState();
}

class _UiScreenSevenState extends State<UiScreenSeven> {
  int _rating = 0;

  void rate(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Rating"),
      ),
      body: new Center(
        child: new Container(
          width: 500.0,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 1 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(1),
              ),
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 2 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(2),
              ),
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 3 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(3),
              ),
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 4 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(4),
              ),
              new GestureDetector(
                child: new Icon(
                  Icons.star,
                  color: _rating >= 5 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
