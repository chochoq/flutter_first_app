import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 스낵바
    final snackBar = SnackBar(
      content: const Text('Yay! A SnackBar!'),
      action: SnackBarAction(
        label: '확인',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("스낵바"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: ElevatedButton(
            child: Text(
              '버튼',
              style: TextStyle(color: Colors.grey),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.amberAccent, elevation: 0),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ));
  }
}
