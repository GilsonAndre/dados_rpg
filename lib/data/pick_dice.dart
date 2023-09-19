import 'package:dados_rpg/data/resources/strings.dart';
import 'package:flutter/material.dart';

class PickDice extends StatefulWidget {
  const PickDice({super.key});

  @override
  State<PickDice> createState() => _PickDiceState();
}

class _PickDiceState extends State<PickDice> {
  List numberDice = [4,6,8,10,12,20];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Selecione um dado para ser jogado'),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset('assets/img/d4.png'),
                    title: const Text('D4 quatro lados'),
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
