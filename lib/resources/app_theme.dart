import 'package:flutter/material.dart';

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      primaryColor: const Color(0xFFE5007B),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFE5007B),
        titleTextStyle: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          padding: const EdgeInsets.fromLTRB(50, 12, 50, 12),
        ),
      ),
    );
  }
}

// Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         //Botão de Rolar
//                         ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               isDiseableButton ? null : randomNumber();
//                               isDiseableButton = true;
//                             });
//                           },
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.fromLTRB(50, 12, 50, 12),
//                             backgroundColor:
//                                 isDiseableButton ? Colors.grey : Colors.pink,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(24),
//                             ),
//                           ),
//                           child: const Text(Strings.buttonRoll),
//                         ),

//                         //Botão de cancelar
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const PickDice(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.fromLTRB(35, 13, 35, 13),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(24),
//                             ),
//                             side: const BorderSide(
//                               color: Colors.pink,
//                             ),
//                             backgroundColor: Colors.white,
//                           ),
//                           child: const Text(
//                             Strings.buttonCancel,
//                             style: TextStyle(color: Colors.pink),
//                           ),
//                         ),
//                       ],