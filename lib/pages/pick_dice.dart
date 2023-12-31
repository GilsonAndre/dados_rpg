import 'package:dados_rpg/resources/app_theme.dart';
import 'package:dados_rpg/resources/strings.dart';
import 'package:dados_rpg/pages/roll_dice.dart';
import 'package:flutter/material.dart';

class PickDice extends StatefulWidget {
  const PickDice({required this.isSwitchted ,super.key});
  // ignore: prefer_typing_uninitialized_variables
  final bool isSwitchted;
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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: widget.isSwitchted ? appTheme.themeDark() : appTheme.themeLight(),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(13.0, 15, 0, 10),
              child: Text(
                Strings.titlePage1,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Expanded(
              //Cria a lista com os itens das 2 variaveis listas
              child: ListView.builder(
                itemCount: numberDice.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                    child: Card(
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
                                    RollDice(diceNumber: numberDice[index], isSwitchted: widget.isSwitchted),
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