import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Mytable(),
  ));
}

class Mytable extends StatefulWidget {
  const Mytable({Key? key}) : super(key: key);

  @override
  _MytableState createState() => _MytableState();
}

class _MytableState extends State<Mytable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120.0),
                border: TableBorder.all(
                  color: Colors.deepOrangeAccent,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Students', style: TextStyle(fontSize: 30.0))
                    ]),
                    Column(children: [
                      Text('Tutorial', style: TextStyle(fontSize: 30.0))
                    ]),
                    Column(children: [
                      Text('Review', style: TextStyle(fontSize: 30.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Mohammod Ali')]),
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Jahangir')]),
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Mahedi')]),
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Shamima')]),
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Deluar')]),
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('0*')]),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
