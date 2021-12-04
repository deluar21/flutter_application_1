import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    home: MyAppbar(),
  ));
}

class MyAppbar extends StatefulWidget {
  const MyAppbar({Key? key}) : super(key: key);

  @override
  _MyAppbarState createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bonghobondho Sheike Mujibor Rohman'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Setting',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.greenAccent[400],
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ), //IconButton
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: [
            Container(
              height: 40,
              width: 40,
              color: Colors.cyanAccent,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.cyanAccent,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.cyanAccent,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
