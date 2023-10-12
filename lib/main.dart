import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1; int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    leftdicenumber = Random().nextInt(6) + 1;
                  });
                  print('Left Button was pressed, $leftdicenumber');
                },
                child: Image.asset('images/dice$leftdicenumber.png')
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightdicenumber = Random().nextInt(6) + 1;
                });
                print('Right button was pressed, $rightdicenumber');
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

