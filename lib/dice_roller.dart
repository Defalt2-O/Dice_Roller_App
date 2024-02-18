import 'package:flutter/material.dart';
import 'dart:math';

//the below vairable isn't stored inside the setstate method as calling a new object everytime would be redundant.
//Instead the final method is created once, and called here again each time a new number is needed.
final randomNumber = Random();

//StatefulWidget is used when the UI of the app is subject to change.
//It means that the widget can hold some state, which allows it to remember information between builds.
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  //createState is used instead of build for StatefulWidgets
  State<DiceRoller> createState() {
    //return type here is State<DiceRoller>, so we have to return a new instance of _DiceRollerState
    //Create a class that will manage and provide data rolling dice, as Flutter requires two classes when creating StatefulWidgets.
    return _DiceRollerState();
  }
}

//We use _DiceRollerState to show that it is a private class. It's not intended for direct access from outside this file.
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      // setState() tells Flutter to  rebuild the Widget with the updated values whenever this method is called.
      //It tells FLutter to re-check the build method(), as some changes in the UI have taken place.
      currentDiceRoll = randomNumber.nextInt(6) +
          1; //Random number is generated from 1 to 6(not 0 to 5, because we added + 1)
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
