import 'package:dados_rpg/data/resources/strings.dart';
import 'package:dados_rpg/data/roll_dice.dart';
import 'package:flutter/material.dart';

class PickDice extends StatefulWidget {
  const PickDice({super.key});

  @override
  State<PickDice> createState() => _PickDiceState();
}

class _PickDiceState extends State<PickDice> {
  //responsavel por fazer a foto do dado aparecer e comprimento do listTile
  List numberDice = [4, 6, 8, 10, 12, 20];
  //responsavel por fazer a nome do dado aparecer
  List nameDice = [
    Strings.d4,
    Strings.d6,
    Strings.d8,
    Strings.d10,
    Strings.d12,
    Strings.d20,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(Strings.titlePage1),
            Expanded(
              child: ListView.builder(
                itemCount: numberDice.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading:
                        Image.asset('assets/img/d${numberDice[index]}.png'),
                    title: Text('${nameDice[index]}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RollDice(diceNumber: numberDice[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
