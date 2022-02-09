import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.watch<CounterProvider>().counter;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Image Screen'),
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: GridView.count(
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            crossAxisCount: 3,
            physics: ClampingScrollPhysics(),
            children: [
              for (int i = 0; i < value; i++)
                Image.network('https://picsum.photos/250?image=$i')
            ],
          )),
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Total Image: $value ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    backgroundColor: Colors.blue[50]),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
