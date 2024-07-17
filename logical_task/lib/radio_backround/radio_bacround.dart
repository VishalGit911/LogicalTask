import 'package:flutter/material.dart';

class RadioBacround extends StatefulWidget {
  const RadioBacround({super.key});

  @override
  State<RadioBacround> createState() => _RadioBacroundState();
}

class _RadioBacroundState extends State<RadioBacround> {
  List<Color> colorthem = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    Colors.white
  ];
  int color = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorthem[color],
        centerTitle: true,
        title: Text("Radio Button Change Backround"),
      ),
      backgroundColor: colorthem[color],
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Radio(
                    value: 0,
                    groupValue: color,
                    onChanged: (value) {
                      color = value!;

                      changebackround();
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Green",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: color,
                    onChanged: (value) {
                      color = value!;

                      changebackround();
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Red",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: color,
                    onChanged: (value) {
                      color = value!;

                      changebackround();
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Blue",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: color,
                    onChanged: (value) {
                      color = value!;

                      changebackround();
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Yellow",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: color,
                    onChanged: (value) {
                      color = value!;

                      changebackround();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Orange",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Radio(
                    value: 5,
                    groupValue: color,
                    onChanged: (value) {
                      color = value!;

                      changebackround();
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Pink",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        onPressed: () {
          setState(() {
            color = 6;
          });
        },
        label: Text("Refresh"),
        icon: Icon(Icons.refresh),
      ),
    );
  }

  changebackround() {
    setState(() {
      switch (color) {
        case 0:
          colorthem[0];

        case 1:
          colorthem[1];
        case 2:
          colorthem[2];
        case 3:
          colorthem[3];
        case 4:
          colorthem[4];
        case 5:
          colorthem[5];
        case 6:
          colorthem[6];
      }
    });
  }
}
