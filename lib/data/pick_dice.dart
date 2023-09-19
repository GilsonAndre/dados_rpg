import 'package:dados_rpg/data/resources/strings.dart';
import 'package:flutter/material.dart';

class PickDice extends StatefulWidget {
  const PickDice({super.key});

  @override
  State<PickDice> createState() => _PickDiceState();
}

class _PickDiceState extends State<PickDice> {
  List numberDice = [4, 6, 8, 10, 12, 20];
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
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading:
                        Image.asset('assets/img/d${numberDice[index]}.png'),
                    title: Text('${nameDice[index]}'),
                    onTap: () {

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
