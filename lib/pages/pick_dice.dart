import 'package:dados_rpg/resources/app_theme.dart';
import 'package:dados_rpg/resources/strings.dart';
import 'package:dados_rpg/pages/roll_dice.dart';
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
  final AppTheme appTheme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme.theme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(13.0, 15, 0, 10),
              child: Text(
                Strings.titlePage1,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: numberDice.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                    child: Card(
                      color: Colors.grey[300],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/img/d${numberDice[index]}.png'),
                          title: Text('${nameDice[index]}'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    RollDice(diceNumber: numberDice[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
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
//Criar o theme e editar ele 
