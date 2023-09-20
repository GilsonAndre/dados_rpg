import 'dart:math';
import 'package:dados_rpg/ui/pick_dice.dart';
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
  String number = '?';
  bool isDiseableButton = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          padding: const EdgeInsets.all(15.0),
          height: 600,
          child: Card(
            color: Colors.grey[300],
            child: Column(
              children: [
                const Text(Strings.titlePage2),
                Stack(
                  children: [
                    Center(
                      child: Image.asset(
                          'assets/img/bg_d${widget.diceNumber}.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 140,
                      ),
                      child: Text(
                        number,
                        style: const TextStyle(fontSize: 150),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      //Botão de Rolar
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isDiseableButton ? null : randomNumber();
                            isDiseableButton = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                isDiseableButton ? Colors.grey : Colors.pink),
                        child: const Text(Strings.buttonRoll),
                      ),

                      //Botão de cancelar
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PickDice(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.pink),
                          //backgroundColor: Colors.white,
                        ),
                        child: const Text(Strings.buttonCancel),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Randomiza os números
  randomNumber() {
    var random = Random().nextInt(widget.diceNumber) + (1);
    setState(() {
      number = random.toString();
    });
  }
}
