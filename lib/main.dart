import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'DICEE!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
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
  int topDiceNo = 1;
  int bottomDiceNo = 1;

  void randomDiceNo() {
    topDiceNo = Random().nextInt(6) + 1;
    bottomDiceNo = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomDiceNo();
                  });
                },
                child: Image(
                  width: 300,
                  image: AssetImage('images/dice$topDiceNo.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomDiceNo();
                  });
                },
                child: Image(
                  width: 300,
                  image: AssetImage('images/dice$bottomDiceNo.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
