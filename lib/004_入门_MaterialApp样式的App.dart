import 'package:flutter/material.dart';

void main()=>runApp(App());


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DING"),
          elevation: 50.0,
        ),
        body: Hello(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 100.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      )
    );
  }
}

