import 'package:flutter/material.dart';

class UiScreenTwo extends StatefulWidget {
  const UiScreenTwo({Key? key}) : super(key: key);

  @override
  State<UiScreenTwo> createState() => _UiScreenTwoState();
}

class _UiScreenTwoState extends State<UiScreenTwo> {
  TextEditingController num1controller = TextEditingController(

  );
  int calculation = 10;
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text('$result')),
Container(
  height: 90,
  width: 200,
  child: TextField(

    controller: num1controller,
    autocorrect: false,
    enableSuggestions: false,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
        labelText: 'Label Text',
        hintText: 'Hint Text',
    ),
  ),

),
            ElevatedButton(
              child: const Text('Calculate'),
              onPressed: () {
                setState(() {
                  double sum = double.tryParse(num1controller.text)??1;
                  final sum1 = sum + calculation;
                  result = sum1.toStringAsFixed(0);
                  num1controller.clear();
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}
