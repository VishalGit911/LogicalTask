import 'package:flutter/material.dart';

class SeekbarChangeColor extends StatefulWidget {
  const SeekbarChangeColor({super.key});

  @override
  State<SeekbarChangeColor> createState() => _SeekbarChangeColorState();
}

class _SeekbarChangeColorState extends State<SeekbarChangeColor> {
  double red = 0;
  double blue = 0;
  double yellow = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(red.toInt(), blue.toInt(), yellow.toInt(), 1),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Seek Bar Change Backrond"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            min: 0,
            max: 225,
            value: red,
            onChanged: (value) {
              setState(() {
                red = value;
              });
            },
          ),
          Slider(
            min: 0,
            max: 225,
            value: blue,
            onChanged: (value) {
              setState(() {
                blue = value;
              });
            },
          ),
          Slider(
            min: 0,
            max: 225,
            value: yellow,
            onChanged: (value) {
              setState(() {
                yellow = value;
              });
            },
          )
        ],
      ),
    );
  }
}
