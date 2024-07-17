import 'package:flutter/material.dart';

class FontSizeBigSmall extends StatefulWidget {
  const FontSizeBigSmall({super.key});

  @override
  State<FontSizeBigSmall> createState() => _FontSizeBigSmallState();
}

class _FontSizeBigSmallState extends State<FontSizeBigSmall> {
  double fontSize = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Font Size Small Big"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            CircleAvatar(
              radius: 150,
              backgroundColor: Colors.amber.shade200,
              foregroundColor: Colors.black,
              child: Text(
                "Vishal",
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (fontSize < 88) {
                            fontSize++;
                            print(fontSize);
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black,
                          fixedSize: Size(150, 60)),
                      child: Text("Big")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (fontSize > 20) {
                            fontSize--;
                            print(fontSize);
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black,
                          fixedSize: Size(150, 60)),
                      child: Text("Small"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
