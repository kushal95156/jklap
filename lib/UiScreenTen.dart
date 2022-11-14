import 'package:flutter/material.dart';

class UiScreenTen extends StatefulWidget {
  const UiScreenTen({Key? key}) : super(key: key);

  @override
  State<UiScreenTen> createState() => _UiScreenTenState();
}

class _UiScreenTenState extends State<UiScreenTen> {
  int _rating=0;
  void rate(int ratin){
    setState(() {
      _rating=ratin;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => rate(1),
                child: Icon(
                  Icons.star,
                  color:_rating >=1 ? Colors.purpleAccent :Colors.grey ,
                ),
              ),
              GestureDetector(
                onTap: () => rate(2),
                child: Icon(
                  Icons.star,color: _rating >=2?Colors.purpleAccent:Colors.grey,
                ),
              ),GestureDetector(
                onTap: () => rate(3),
                child: Icon(
                  Icons.star,color: _rating >=3?Colors.purpleAccent:Colors.grey,
                ),
              ),GestureDetector(
                onTap: () => rate(4),
                child: Icon(
                  Icons.star,color: _rating >=4?Colors.purpleAccent:Colors.grey,
                ),
              ),GestureDetector(
                onTap: () => rate(5),
                child: Icon(
                  Icons.star,color: _rating >=5?Colors.purpleAccent:Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
