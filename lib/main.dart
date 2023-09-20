import 'package:dados_rpg/pages/pick_dice.dart';
import 'package:dados_rpg/resources/app_theme.dart';
import 'package:dados_rpg/resources/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppTheme appTheme = AppTheme();

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme.theme(),
      title: Strings.appName,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
          actions: [
            Switch(
              value: light,
              onChanged: (bool value) {
                setState(() {
                  light= value;
                });
              },
            )
          ],
        ),
        body: const PickDice(),
      ),
    );
  }
}
