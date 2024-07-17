import 'package:flutter/material.dart';
import 'package:logical_task/checkbox/component/checkbox_body.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  @override
  Widget build(BuildContext context) {
    return CheckBoxBody();
  }
}
