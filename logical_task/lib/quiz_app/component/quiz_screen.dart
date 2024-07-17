import 'package:flutter/material.dart';
import 'package:logical_task/quiz_app/component/answerbutton.dart';
import 'package:logical_task/quiz_app/component/model_quiz.dart';
import 'package:logical_task/quiz_app/component/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentindex = 0;

  int qustiondata = qustionandanswer.length;

  List<String> rightanswer = [];

  void storeanswer({required String answer}) {
    setState(() {
      if (currentindex < qustiondata - 1) {
        rightanswer.add(answer);
        currentindex++;
      } else {
        rightanswer.add(answer);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                rightanswer: rightanswer,
              ),
            ));
      }
      print(rightanswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    var qustionandAnswer = qustionandanswer[currentindex];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple.shade900,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: Center(
                    child: Text(
                      qustionandAnswer.quistion,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                ...qustionandAnswer.answer.map(
                  (elemant) {
                    return AnswerButton(
                        onPressed: () {
                          setState(() {
                            storeanswer(answer: elemant);
                          });
                        },
                        text: elemant);
                  },
                ).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
