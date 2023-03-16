import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: DicePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rdicenum = 1;
  int ldicenum = 3;
  void changeDice() {
    setState(() {
      ldicenum = Random().nextInt(6) + 1;
      rdicenum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Dice Roller app Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset('images/dice$ldicenum.png')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset('images/dice$rdicenum.png')),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}
