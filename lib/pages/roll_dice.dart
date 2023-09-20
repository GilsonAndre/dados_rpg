import 'dart:math';
import 'package:dados_rpg/pages/pick_dice.dart';
import 'package:dados_rpg/resources/app_theme.dart';
import 'package:dados_rpg/resources/strings.dart';
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

  final AppTheme appTheme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme.theme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
        ),
        body: Container(
          padding: const EdgeInsets.all(15.0),
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Strings.titlePage2,
                style: TextStyle(fontSize: 20.0),
              ),
              Card(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/img/bg_d${widget.diceNumber}.png',
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            number,
                            style: const TextStyle(fontSize: 150),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            padding: const EdgeInsets.fromLTRB(50, 12, 50, 12),
                            backgroundColor:
                                isDiseableButton ? Colors.grey : Colors.pink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
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
                            padding: const EdgeInsets.fromLTRB(35, 13, 35, 13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            side: const BorderSide(
                              color: Colors.pink,
                            ),
                            backgroundColor: Colors.white,
                          ),
                          child: const Text(
                            Strings.buttonCancel,
                            style: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
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
