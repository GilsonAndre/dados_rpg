import 'package:dados_rpg/data/pick_dice.dart';
import 'package:dados_rpg/data/resources/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Strings.appName,
      home: PickDice(),
    );
  }
}
