import 'package:flutter/material.dart';

class Newdart extends StatefulWidget {
  const Newdart({super.key});

  @override
  State<Newdart> createState() => _NewdartState();
}

class _NewdartState extends State<Newdart> {
  String deep = "deep";
  String vishal = "Vishal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
    );
  }
}