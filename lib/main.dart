import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //Think of MaterialApp as a frame, which frames the picture, and Scaffold as the picture itself.
        body: GradientContainer(
            Color.fromARGB(255, 237, 6, 83), Color.fromARGB(255, 113, 15, 48)),
      ),
    ),
  );
}

/*
  NOTE: Hover over a widget to see its functionality, and what type of arguments it accepts.

 - runApp() needs to know what to run, which in the case of a mobile app, is a tree of widgets.
   Therefore it requires our created widgets as a Parameter.

 - MaterialApp is a class constructor, and it is the first argument passed to runApp().
   It 's like saying "Hey Flutter, I want you to display this App".

 - MaterialApp takes a bunch of Named Arguments, which help create the widgets we want to display.
   'home' is the main argument that we send to MaterialApp, which tells flutter which app to materialze.

 - 'const' helps dart optimize performance during runtime, by storing the const value in memory, and
    resuing it if it is called again, instead of creating it once more. It should be some value that will not change.

 - The 'Scaffold' widget allows us to create a good looking screen. We send the 'body' named argument to it.

 - Add a comma after the paranthesis of every argument of every widget, then use the format document to indent the code accordingly.

 - 
 -
 -
 -
 -
 -
 -
 -
 */