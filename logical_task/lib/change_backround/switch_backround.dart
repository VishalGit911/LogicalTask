import 'package:flutter/material.dart';

class SwitchBackround extends StatefulWidget {
  const SwitchBackround({super.key});

  @override
  State<SwitchBackround> createState() => _SwitchBackroundState();
}

class _SwitchBackroundState extends State<SwitchBackround> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Backround"),
        backgroundColor: change ? Colors.white : Colors.black,
        foregroundColor: change ? Colors.black : Colors.white,
      ),
      backgroundColor: change ? Colors.white : Colors.black,
      body: Center(
        child: Switch(
          value: change,
          onChanged: (value) {
            setState(() {
              change = value;
            });
          },
        ),
      ),
    );
  }
}
