import 'package:flutter/material.dart';
import 'package:flutter_provider/ImageScreen.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'ImageScreen.dart';

//Người sử dụng
class CounterHome extends StatelessWidget {
  const CounterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.watch<CounterProvider>().counter;
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('Main Screen'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Total Image To Watch',
                style: TextStyle(fontSize: 36, color: Colors.blue),
              ),
            ),
            Text(
              context.watch<CounterProvider>().counter.toString(),
              style: TextStyle(fontSize: 40, color: Colors.white70),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ImageScreen()));
              },
              child: Text('Watch Image'),
            )
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: FloatingActionButton(
                  onPressed: () {
                    context.read<CounterProvider>().add();
                  },
                  child: Icon(Icons.add),
                  heroTag: "btn1"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: FloatingActionButton(
                  onPressed: () {
                    context.read<CounterProvider>().remove();
                  },
                  child: Icon(Icons.remove),
                  heroTag: "btn2"),
            )
          ],
        ));
  }
}
