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

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftbutton = 2;
  int rightbutton = 3;
  void setnumber(){
    setState(() {
      leftbutton = Random().nextInt(6) + 1;
      rightbutton = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
               setnumber();
              },
              child: Image.asset('images/dice$leftbutton.png',
              ),
            ),
          ),
          Expanded(

            child: TextButton(
                onPressed: (){
                  setnumber();
                },
                child: Image.asset('images/dice$rightbutton.png')),
          ),
        ],
      ),
    );
  }
}



