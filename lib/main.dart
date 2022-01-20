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
    return Scaffold(
      appBar: AppBar(
        title: Text("my page"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('dd');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('dd');
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('chocho'),
              accountEmail: Text('mail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/1.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                    backgroundImage: AssetImage('assets/1.png'), backgroundColor: Colors.white),
                // CircleAvatar(
                //     backgroundImage: AssetImage('assets/1.png'), backgroundColor: Colors.white),
              ],
              onDetailsPressed: () {
                print('dd');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    // bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.accessibility_new_rounded,
                color: Colors.green[200],
              ),
              title: Text('home'),
              onTap: () {
                print('home on tap');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.battery_saver_sharp,
                color: Colors.green[200],
              ),
              title: Text('바뗴리'),
              onTap: () {
                print('바ㅔ리 on tap');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.add_reaction,
                color: Colors.green[200],
              ),
              title: Text('smile'),
              onTap: () {
                print('스일 on tap');
              },
            ),
          ],
        ),
      ),
    );
  }
}
