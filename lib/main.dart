import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ImageScreen.dart';
import 'CounterHome.dart';

void main() => runApp(
    //Nhà Phân Phối
    ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: MaterialApp(
          home: CounterHome(),
        )));

//Nhà Cung Cấp
class CounterProvider extends ChangeNotifier {
  int _counter = 50;

  int get counter => _counter;

  void add() {
    _counter++;
    notifyListeners();
  }

  void remove() {
    _counter--;
    notifyListeners();
  }
}
