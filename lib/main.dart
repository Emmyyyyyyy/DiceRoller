import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void setDiceNumber() => {
        setState(() => {
              leftDiceNumber = Random().nextInt(6) + 1,
              rightDiceNumber = Random().nextInt(6) + 1,
            })
      };
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () => {setDiceNumber()},
          )),
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () => {setDiceNumber()},
          ))
        ],
      ),
    );
  }
}

// class 
