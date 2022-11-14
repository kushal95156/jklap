import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDetails {
  final String nameO;
  final String numberO;

  MyDetails({required this.nameO, required this.numberO});
}

class UiScreenTwelve extends StatefulWidget {
  const UiScreenTwelve({Key? key}) : super(key: key);

  @override
  State<UiScreenTwelve> createState() => _UiScreenTwelveState();
}

class _UiScreenTwelveState extends State<UiScreenTwelve> {
  Size get screenSize => MediaQuery.of(context).size;
  String name = '';
  String number = '';
  String nameOO = '';
  String numberOO = '';
  List contacts = [];
  String newName='';
  String newNumber='';

  @override
  void didUpdateWidget(covariant UiScreenTwelve oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.085,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.085,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                onChanged: (value) {
                  setState(() {
                    number = value;
                  });
                },
              ),
            ),
          ),
          Container(
            child: CupertinoButton(
              child: Text('ADD'),
              onPressed: () {
                setState(() {
                  nameOO = name;
                  numberOO = number;
                  contacts.add(MyDetails(nameO: nameOO, numberO: numberOO));
                });
              },
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${contacts[index].nameO}'),
                subtitle: Text('${contacts[index].numberO}'),
                trailing: IconButton(onPressed: () {
                  showDialog(context: context, builder: (context) => AlertDialog(
                    title: Column(
                      children: [
                        TextField(
                          onChanged: (value) {
                            setState(() {
                              newName=value;
                            });
                          },
                        ),   TextField(
                          onChanged: (value) {
                            setState(() {
                              newName=value;
                            });
                          },
                        ),
                        CupertinoButton(child: Text('Edit'), onPressed: () {
                          setState(() {

                          });
                        },)
                      ],
                    ),
                  ),);
                },
                icon:  Icon(Icons.edit, color: Colors.grey, size: 20)),
              );
            },
          ))
        ],
      ),
    );
  }
}
