import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CheckBoxBody extends StatefulWidget {
  const CheckBoxBody({super.key});

  @override
  State<CheckBoxBody> createState() => _CheckBoxBodyState();
}

class _CheckBoxBodyState extends State<CheckBoxBody> {
  bool pizza = false;
  bool panipuri = false;
  bool samosa = false;
  bool khaman = false;
  bool bhel = false;
  bool dhokala = false;
  bool burger = false;

  int pizza1 = 450,
      panipuri1 = 60,
      samosa1 = 40,
      khaman1 = 120,
      bhel1 = 100,
      dhokala1 = 300,
      burger1 = 80;
  String total = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade500,
        foregroundColor: Colors.white,
        title: const Text(
          "HONEST",
          style: TextStyle(letterSpacing: 3),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "Please Select Your Items",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: pizza,
                    onChanged: (value) {
                      setState(() {
                        pizza = value!;
                      });
                    },
                  ),
                  const Text(
                    "₹450/Pizza",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: panipuri,
                    onChanged: (value) {
                      setState(() {
                        panipuri = value!;
                      });
                    },
                  ),
                  const Text(
                    "₹60/PaniPuri",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: samosa,
                    onChanged: (value) {
                      setState(() {
                        samosa = value!;
                      });
                    },
                  ),
                  const Text(
                    "₹40/Samosa",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: khaman,
                    onChanged: (value) {
                      setState(() {
                        khaman = value!;
                      });
                    },
                  ),
                  const Text(
                    "₹120/Khaman",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: bhel,
                    onChanged: (value) {
                      setState(() {
                        bhel = value!;
                      });
                    },
                  ),
                  const Text(
                    "₹100/Bhel",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: dhokala,
                    onChanged: (value) {
                      setState(() {
                        dhokala = value!;
                      });
                    },
                  ),
                  const Text(
                    "₹300/Dhokala",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: burger,
                    onChanged: (value) {
                      setState(() {
                        burger = value!;
                      });
                    },
                  ),
                  const Text(
                    "₹80/Burger",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurple.shade500,
                        fixedSize: const Size(350, 50)),
                    onPressed: () {
                      int total = 0;
                      if (pizza) {
                        total = total + pizza1;
                      }
                      if (panipuri) {
                        total = total + panipuri1;
                      }
                      if (samosa) {
                        total = total + samosa1;
                      }
                      if (khaman) {
                        total = total + khaman1;
                      }
                      if (bhel) {
                        total = total + bhel1;
                      }
                      if (dhokala) {
                        total = total + dhokala1;
                      }
                      if (burger) {
                        total = total + burger1;
                      }
                      Fluttertoast.showToast(
                          msg: "Your Total Bill Is $total",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.white,
                          fontSize: 16.0,
                          backgroundColor: Colors.black);

                      setState(() {});
                    },
                    child: const Text("Conform")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
