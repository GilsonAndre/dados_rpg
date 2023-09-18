import 'package:flutter/material.dart';

class PickDice extends StatefulWidget {
  const PickDice({super.key});

  @override
  State<PickDice> createState() => _PickDiceState();
}

class _PickDiceState extends State<PickDice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rpg Academy'),
        ),
      ),
    );
  }
}
