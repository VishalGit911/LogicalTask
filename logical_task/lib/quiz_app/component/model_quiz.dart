class ModelQuiz {
  String quistion;
  List answer = [String];

  ModelQuiz({required this.quistion, required this.answer});
}

final qustionandanswer = [
  ModelQuiz(
    quistion: 'What are the main building blocks of Flutter UIs?',
    answer: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  ModelQuiz(
    quistion: 'How are Flutter UIs built?',
    answer: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  ModelQuiz(
    quistion: 'What\'s the purpose of a StatefulWidget?',
    answer: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  ModelQuiz(
    quistion:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answer: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  ModelQuiz(
    quistion: 'What happens if you change data in a StatelessWidget?',
    answer: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  ModelQuiz(
    quistion: 'How should you update data inside of StatefulWidgets?',
    answer: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
