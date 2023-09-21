import 'package:dados_rpg/pages/pick_dice.dart';
import 'package:dados_rpg/resources/app_theme.dart';
import 'package:dados_rpg/resources/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Instaciando minha classe theme
  AppTheme appTheme = AppTheme();
  //bool responsavel por dizer se o switch foi apertado ou não
  bool isSwitchted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: isSwitchted ? appTheme.themeDark() : appTheme.themeLight(),
      darkTheme: appTheme.themeDark(),
      title: Strings.appName,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
          actions: [
            Switch(
              activeColor: const Color(0xFF343434),
              value: isSwitchted,
              onChanged: (value) {
                setState(() {
                  isSwitchted = !isSwitchted;
                });
              },
            ),
          ],
        ),
        body: PickDice(isSwitchted: isSwitchted),
      ),
    );
  }
}