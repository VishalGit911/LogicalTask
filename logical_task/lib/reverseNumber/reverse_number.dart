import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReverseNumber extends StatefulWidget {
  const ReverseNumber({super.key});

  @override
  State<ReverseNumber> createState() => _ReverseNumberState();
}

class _ReverseNumberState extends State<ReverseNumber> {
  TextEditingController controller = TextEditingController();

  String revrsevalue = "";

  void revresenumber(String input) {
    if (RegExp(r'^[0-9]+$').hasMatch(input)) {
      revrsevalue = input.split("").reversed.join("");
    } else {
      revrsevalue = "Pleaase Enter Number";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reverse Number"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                child: Text("Enter Number "),
              ),
              TextFormField(
                onChanged: revresenumber,
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextField(
                  onChanged: revresenumber,
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: revrsevalue,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
