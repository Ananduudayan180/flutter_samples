import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(backgroundColor: Colors.blueGrey),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DiceAppState();
}

class _DiceAppState extends State<DicePage> {
  int diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,

            child: TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.transparent),
              onPressed: () {
                setState(() {
                  diceNumber = Random().nextInt(6) + 1;
                });
                // print(diceNumber);
              },
              child: Image(image: AssetImage('lib/images/dice$diceNumber.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}
