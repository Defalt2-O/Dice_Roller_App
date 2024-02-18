import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text,
      {super.key}); /* The 'this.xyz' syntax tells flutter to look for a variable named 'xyz'
  in the class, and whatever argument is passed to 'this.xyz', assign it to the variable 'xyz'.      */

  final String text;
  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28.0,
        ),
      ),
    );
  }
}
