import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logical_task/quiz_app/component/quiz_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple.shade900,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Opacity(
                    opacity: 0.8,
                    child: Image(
                      image: AssetImage("assets/images/quiz_logo.png"),
                      height: 350,
                      width: 350,
                    )),
                Text(
                  "Learn Flutter The Fun Away.",
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(),
                        ));
                  },
                  label: Text(
                    "Start Quiz",
                    style: TextStyle(color: Colors.grey),
                  ),
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
