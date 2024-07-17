import 'package:flutter/material.dart';

class ChangeBackroundScreen extends StatefulWidget {
  const ChangeBackroundScreen({super.key});

  @override
  State<ChangeBackroundScreen> createState() => _ChangeBackroundScreenState();
}

class _ChangeBackroundScreenState extends State<ChangeBackroundScreen> {
  List<Color> colorname = [Colors.black, Colors.white];
  int currendtindex = 0;
  int bacr = 1;

  void changecolor() {
    setState(() {
      currendtindex = currendtindex + 1;
      bacr = bacr - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorname[currendtindex],
        foregroundColor: colorname[bacr],
        title: Text("Change Backround"),
      ),
      backgroundColor: colorname[currendtindex],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorname[bacr],
                    foregroundColor: colorname[currendtindex]),
                onPressed: () {
                  setState(() {
                    if (currendtindex == 0) {
                      changecolor();
                    } else {
                      removevalue();
                    }
                  });
                },
                child: Text("Presed The Change Backround")),
          )
        ],
      ),
    );
  }

  void removevalue() {
    setState(() {
      currendtindex = 0;
      bacr = 1;
    });
  }
}
