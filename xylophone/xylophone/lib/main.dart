// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  void playSound(int n) {
    final player =
        AudioCache(); //final is used to create constants/objects/variables to make the immutable
    //final: run-time, const: compile-time
    player.play('note$n.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Xylokey(1, Colors.red),
          Xylokey(2, Colors.blue),
          Xylokey(3, Colors.green),
          Xylokey(4, Colors.yellow),
          Xylokey(5, Colors.white),
          Xylokey(6, Colors.black),
          Xylokey(7, Colors.purple),
        ],
      ),
    );
  }

  Expanded Xylokey(int soundNumber, Color color) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}