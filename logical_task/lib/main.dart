import 'package:flutter/material.dart';
import 'package:logical_task/quiz_app/home.dart';

import 'Share_image/share_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShareImageScreen(
        imagePath: 'assets/image/quiz_logo.png',
      ),
    );
  }
}
