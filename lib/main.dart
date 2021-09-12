import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'character card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('dsd'),
            Text('dsd'),
            Text('dsd'),
            Text('dsd'),
          ],
        ),
      ),
    );
  }
}
