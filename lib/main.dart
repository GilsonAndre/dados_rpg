import 'package:dados_rpg/ui/pick_dice.dart';
import 'package:dados_rpg/ui/resources/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: Strings.appName,
      home: PickDice(),
    );
  }
}
