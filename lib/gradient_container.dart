import 'package:flutter/material.dart';

import './dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ), //Image() is the default constructor used, Image.asset() is another one
    );
  }
}

/*
   NOTE: To make any configuration changes or style edits of your choice, always check for an argument first.

 - 'Container' is a widget provided by Flutter that allows you to group together other widgets so that they share a common parent and
   inherit properties from that parent. This provides us with functionalities such as decoration, provided by container.

 - A list can be created by using the [] brackets.

 - Use the 'class' keyword to reate custom classes of your own, and always extend the 'StatelessWidget' class, which automatically adds
   a lot of data and logic behind the scenes. It also forces you to use the build method in the class, which returns a widget. Also use
   override before the  "build" keyword to implement your own functionality to the build method. 'Build' must also take a 'context'
   argument (metadata).

   NOTE: remember to start the build method with the 'return ;' keyword

 - StateLess Widget can and should be used if we accept some input arguments and output some content, and not with widgets that
   have some internally changing data which should affect the rendered UI
 - 'StstelessWidget' expects a 'key' argument, which should be passed to SW by the constructor of our class. This is done by typing
   'ClassName({super.key});'

 - When creating another file to make a custom class, the import statement to use in the main file should be
   'import 'package:<project_name>/<class_name.dart>

 - When creating variables, use 'var' when initilaising during declaration. Else if assingning values later, mention the type
   before the variable name during declaration, like <type>? <variable_name>, although this is quite unclear still
   [The ? is used to tell dart that its either that data type or a null data type]

 - If the value of some data doesnt change throughtout the program, use the 'final' keyword. [or const too - telling dart this is a
   compile time constant]
   NOTE: sometimes, when compiling a code, a variable might be expecting a value from a function which requires an input, but doesn't
   change throughtout the program. Therefore it cannot be const as the value isn't known at compile time, but it can be final as the
   value stays the same.

 - You can use the 'required' keyword before a named argument to ensure that that named argument must be provided

 -
 -
 -
 -
 -
 -
 -
 -
 */