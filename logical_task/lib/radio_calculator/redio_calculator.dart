import 'package:flutter/material.dart';

class RedioCalculator extends StatefulWidget {
  const RedioCalculator({super.key});

  @override
  State<RedioCalculator> createState() => _RedioCalculatorState();
}

class _RedioCalculatorState extends State<RedioCalculator> {
  String calculator = "";
  int total1 = 0;

  TextEditingController firstnumber = TextEditingController();
  TextEditingController secondnumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: firstnumber,
                  decoration: InputDecoration(
                      labelText: "Enter First Value",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: secondnumber,
                  decoration: InputDecoration(
                      labelText: "Enter Second Value",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                      value: "Summation",
                      groupValue: calculator,
                      onChanged: (value) {
                        setState(() {
                          calculator = value!;
                        });
                      },
                    ),
                    Text(
                      "Summation",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                      value: "Subtraction",
                      groupValue: calculator,
                      onChanged: (value) {
                        setState(() {
                          calculator = value!;
                        });
                      },
                    ),
                    Text(
                      "Subtraction",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                      value: "Multiplication",
                      groupValue: calculator,
                      onChanged: (value) {
                        setState(() {
                          calculator = value!;
                        });
                      },
                    ),
                    Text(
                      "Multiplication",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                      value: "Division",
                      groupValue: calculator,
                      onChanged: (value) {
                        setState(() {
                          calculator = value!;
                        });
                      },
                    ),
                    Text(
                      "Division",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    setState(() {
                      int first = int.parse(firstnumber.text);
                      int secont = int.parse(secondnumber.text);
                      int total = 0;
                      switch (calculator) {
                        case "Summation":
                          total = first + secont;
                        case "Subtraction":
                          total = first - secont;
                        case "Multiplication":
                          total = first * secont;
                        case "Division":
                          total = first ~/ secont;
                      }
                      total1 = total;
                    });
                  },
                  child: Text(
                      "${total1 == 0 ? "Answer" : "Your Answer Is $total1"}"))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            refres();
          });
        },
        label: Text("Refresh"),
        icon: Icon(Icons.refresh),
      ),
    );
  }

  refres() {
    setState(() {
      total1 = 0;
      calculator = "";
    });
  }
}
