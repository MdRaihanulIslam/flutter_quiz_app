import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 213, 29, 5),
                const Color.fromARGB(255, 61, 8, 209)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          )),
          child: StartScreen()
        ),
      ),
    ),
  );
}
