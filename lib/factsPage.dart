// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'dart:math';

class FactsPage extends StatefulWidget {
  @override
  State<FactsPage> createState() => _FactsPageState();
}

class _FactsPageState extends State<FactsPage> {
  int factNumber = 1;

  void generateFact() {
    setState(() {
      factNumber = Random().nextInt(12) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff182C4A),
      appBar: AppBar(
        leading: Hero(
          tag: 'logo',
          child: CircleAvatar(
            backgroundImage: AssetImage('images/mscLogo.png'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: Text(
          'FACTOS',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/fact$factNumber.jpg'),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                generateFact();
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Next Fact!!!',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}