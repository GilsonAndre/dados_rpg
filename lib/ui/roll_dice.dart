import 'dart:math';

import 'package:dados_rpg/ui/resources/strings.dart';
import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({
    required this.diceNumber,
    super.key,
  });
  // ignore: prefer_typing_uninitialized_variables
  final diceNumber;
  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
        ),
        body: Column(
          children: [
            const Text(Strings.titlePage2),
            Stack(
              children: [
                Image.asset('assets/img/bg_d${widget.diceNumber}.png'),
                const Positioned(child: Text(''))
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    var random = Random().nextInt(widget.diceNumber) +  (1);
                    print(random);
                  },
                  child: const Text(Strings.buttonRoll),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(Strings.buttonCancel),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
