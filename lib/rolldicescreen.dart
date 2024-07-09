import 'dart:math';

import 'package:flutter/material.dart';

final randomMizer = Random();

class RollDiceScreen extends StatefulWidget {
  RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  late int imagenumber = 1;
  randomCheckedValue() {
    setState(() {
      imagenumber = randomMizer.nextInt(6) + 1;
      //print((imagenumber));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(
            "assets/images/$imagenumber.png",
            width: 200,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: randomCheckedValue,
          child: Text("Roll Dice"),
        ),
      ]),
    );
  }
}
