
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE041562),
          centerTitle: true,
          // ignore: prefer_const_constructors
          title: (Text('Dream App')),
          ),
          body: Center(
            child: Image(
            image: AssetImage('images/deer.jpg'),
          )),
          backgroundColor: Colors.orangeAccent,
          ),
    );
  }
}

