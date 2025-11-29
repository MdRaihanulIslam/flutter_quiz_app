import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  var activeScreen = 'start-screen';

  switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 213, 29, 5),
                Color.fromARGB(255, 61, 8, 209)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          )),
          child: activeScreen=='start-screen' ? StartScreen(switchScreen) : QuestionsScreen()
        ),
      ),
    );
  }
} 