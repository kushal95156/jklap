import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier{
  bool _value=false;
  bool _valuee=true;

  bool get valuee => _valuee;

  set valuee(bool value) {
    _valuee = value;
    notifyListeners();
  }

  bool get value => _value;

  set value(bool value) {
    _value = value;
    notifyListeners();
  }
  void change(){
    if(value==false){
      value=true;
    }else{
      value=false;
    }
  }
}