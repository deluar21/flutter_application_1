import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    home: MyLayout(),
  ));
}

class MyLayout extends StatefulWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  _MyLayoutState createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(40),
          color: Colors.orange,
          child: Stack(
            children: <Widget>[
              Container(color: Colors.amber),
              Container(
                color: Colors.orange,
                height: 260,
                width: 260,
              ),
              Container(color: Colors.pink, height: 260, width: 260),
            ],
          ),
        ),
      ),
    );
  }
}
