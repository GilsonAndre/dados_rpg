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
        body: Container(
          padding: const EdgeInsets.all(15.0),
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                Strings.titlePage2,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Card(
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
                            backgroundColor: isDiseableButton
                                ? Colors.grey
                                : const Color(0xFFE5007B),
                          ),
                          child: const Text(Strings.buttonRoll),
                        ),

                        const SizedBox(
                          width: 10,
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
                            side: const BorderSide(
                              color: Colors.pink,
                            ),
                            backgroundColor: Color(0xFFF1F1F1)
                          ),
                          child: const Text(
                            Strings.buttonCancel,
                            style: TextStyle(
                              color: Color(0xFFE5007B),
                            ),
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
