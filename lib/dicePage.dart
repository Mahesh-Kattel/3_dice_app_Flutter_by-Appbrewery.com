import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstdice = 2;
  int seconddice = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          firstdice = Random().nextInt(6) + 1;
                          seconddice = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image(
                        image: AssetImage('images/dice$firstdice.png'),
                        color: Colors.black,
                      )),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          firstdice = Random().nextInt(6) + 1;
                          seconddice = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image(
                        image: AssetImage('images/dice$seconddice.png'),
                        color: Colors.green,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
