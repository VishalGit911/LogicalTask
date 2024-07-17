import 'package:flutter/material.dart';

class HideText extends StatefulWidget {
  const HideText({super.key});

  @override
  State<HideText> createState() => _HideTextState();
}

class _HideTextState extends State<HideText> {
  bool hidetext = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hide Text"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Checkbox(
                value: hidetext,
                onChanged: (bool? value) {
                  setState(() {
                    hidetext = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [if (!hidetext) Text("This is hide text")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
