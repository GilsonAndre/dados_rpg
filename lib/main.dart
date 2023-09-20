import 'package:dados_rpg/pages/pick_dice.dart';
import 'package:dados_rpg/resources/app_theme.dart';
import 'package:dados_rpg/resources/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final AppTheme appTheme = AppTheme();
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme.theme(),
      title: Strings.appName,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
        ),
        body: const PickDice(),
      ),
    );
  }
}
