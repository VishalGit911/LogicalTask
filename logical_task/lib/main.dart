import 'package:flutter/material.dart';
import 'package:logical_task/puzzelGame/puzzel_game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: PuzzelGame());
  }
}
