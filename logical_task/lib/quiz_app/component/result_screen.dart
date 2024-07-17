// import 'package:flutter/material.dart';
//
// import 'model_quiz.dart';
//
// class ResultScreen extends StatefulWidget {
//   List<String> rightanswer;
//
//   ResultScreen({super.key, required this.rightanswer});
//
//   @override
//   State<ResultScreen> createState() => _ResultScreenState();
// }
//
// class _ResultScreenState extends State<ResultScreen> {
//   bool status = false;
//   var qustionlistlength = qustionandanswer.length;
//   List answer = [
//     'Widgets',
//     'By combining widgets in a visual editor',
//     'Update data as UI changes',
//     'StatefulWidget',
//     'The UI is not updated',
//     'By calling updateUI',
//   ];
//
//   int count = 0;
//
//   void checkrightanswer() {
//     for (int i = 0; i < qustionlistlength; i++) {
//       if (widget.rightanswer[i] == answer[i]) {
//         count++;
//       }
//       setState(() {});
//     }
//   }
//
//   @override
//   void initState() {
//     checkrightanswer();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple,
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         foregroundColor: Colors.white,
//         title: Text(
//           "ANSWER SCREEN",
//           style: TextStyle(fontSize: 22, letterSpacing: 3),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               ListView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: qustionlistlength,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     color: Colors.black,
//                     child: Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             qustionandanswer[index].quistion,
//                             style: TextStyle(fontSize: 25, color: Colors.white),
//                           ),
//                           Text(
//                             widget.rightanswer[index],
//                             style: TextStyle(
//                                 color:
//                                     widget.rightanswer[index] == answer[index]
//                                         ? Colors.green
//                                         : Colors.red,
//                                 fontSize: 20),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
//                 child: Text(
//                   "Your Right Answer Is $count",
//                   style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.green.shade600,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Right Answer  ->",
//                       style: TextStyle(
//                           fontSize: 22,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w500),
//                     ),
//                     Checkbox(
//                       value: status,
//                       side: BorderSide(color: Colors.white),
//                       onChanged: (value) {
//                         setState(() {
//                           status = value!;
//                         });
//                       },
//                     )
//                   ],
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// /*
//  Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Visibility(
//                         visible: status,
//                         child: Text(
//                           '''
//   1  Widgets
//   2  By combining widgets in a visual editor
//   3  Update data as UI changes
//   4  StatefulWidget
//   5  The UI is not updated
//   6  By calling updateUI
//                         ''',
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//  */
import 'package:flutter/material.dart';

import 'model_quiz.dart';

class ResultScreen extends StatefulWidget {
  final List<String> rightanswer;

  ResultScreen({super.key, required this.rightanswer});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  bool status = false;
  var questionListLength = qustionandanswer.length;
  List<String> answers = [
    'Widgets',
    'By combining widgets in a visual editor',
    'Update data as UI changes',
    'StatefulWidget',
    'The UI is not updated',
    'By calling updateUI',
  ];

  int count = 0;

  void checkRightAnswer() {
    for (int i = 0; i < questionListLength; i++) {
      if (widget.rightanswer[i] == answers[i]) {
        count++;
      }
    }
  }

  @override
  void initState() {
    checkRightAnswer();

    super.initState();
  }

  void _showAnswersDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          title: Text('Correct Answers'),
          content: SingleChildScrollView(
            child: ListBody(
              children: answers.map((answer) => Text(answer)).toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                setState(() {});
                status = false;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text(
          "ANSWER SCREEN",
          style: TextStyle(fontSize: 22, letterSpacing: 3),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: questionListLength,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            qustionandanswer[index].quistion,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Text(
                            widget.rightanswer[index],
                            style: TextStyle(
                                color:
                                    widget.rightanswer[index] == answers[index]
                                        ? Colors.green
                                        : Colors.red,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: Text(
                  "Your Right Answer Is $count",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Show Correct Answers",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Checkbox(
                      value: status,
                      side: BorderSide(color: Colors.white),
                      onChanged: (value) {
                        setState(() {
                          status = value!;
                          if (status) {
                            _showAnswersDialog();
                          }
                        });
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
