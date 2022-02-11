import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey.shade900,
          ),
          body: MainPage(),
        ),
      ),
    );

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int ballNumber = 1;
  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () => changeBall(),
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
