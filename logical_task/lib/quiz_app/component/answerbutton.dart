import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  void Function() onPressed;
  String text;

  AnswerButton({super.key, required this.onPressed, required this.text});

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurpleAccent,
            fixedSize: Size(400, 60)),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
