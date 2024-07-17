import 'dart:math';

import 'package:flutter/material.dart';

class PuzzelGame extends StatefulWidget {
  const PuzzelGame({super.key});

  @override
  State<PuzzelGame> createState() => _PuzzelGameState();
}

class _PuzzelGameState extends State<PuzzelGame> {
  List numberlist = [];

  @override
  void initState() {
    generate(1, 8, 8);
    super.initState();
  }

  void generate(int min, int max, int count) {
    List data = [];
    Random obj = Random();

    while (data.length < count) {
      int rendomnumber = min + obj.nextInt(max - min + 1);
      if (!data.contains(rendomnumber)) {
        data.add(rendomnumber);
      }
    }
    data.add(0);
    numberlist = data;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    numberlist[8] = numberlist[8] == 0 ? "" : numberlist[8];

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple.shade500,
        centerTitle: true,
        title: const Text(
          "PUZZEL GAME",
          style: TextStyle(
              letterSpacing: 3, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            children: [
              commanContainer(
                text: numberlist[0].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[1] == "") {
                      numberlist[1] = numberlist[0];
                      numberlist[0] = "";
                    } else if (numberlist[3] == "") {
                      numberlist[3] = numberlist[0];
                      numberlist[0] = "";
                    }
                  });
                  congratulation();
                },
              ),
              commanContainer(
                text: numberlist[1].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[0] == "") {
                      numberlist[0] = numberlist[1];
                      numberlist[1] = "";
                    } else if (numberlist[2] == "") {
                      numberlist[2] = numberlist[1];
                      numberlist[1] = "";
                    } else if (numberlist[4] == "") {
                      numberlist[4] = numberlist[1];
                      numberlist[1] = "";
                    }
                  });
                  congratulation();
                },
              ),
              commanContainer(
                text: numberlist[2].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[1] == "") {
                      numberlist[1] = numberlist[2];
                      numberlist[2] = "";
                    } else if (numberlist[5] == "") {
                      numberlist[5] = numberlist[2];
                      numberlist[2] = "";
                    }
                  });
                  congratulation();
                },
              ),
              commanContainer(
                text: numberlist[3].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[0] == "") {
                      numberlist[0] = numberlist[3];
                      numberlist[3] = "";
                    } else if (numberlist[4] == "") {
                      numberlist[4] = numberlist[3];
                      numberlist[3] = "";
                    } else if (numberlist[6] == "") {
                      numberlist[6] = numberlist[3];
                      numberlist[3] = "";
                    }
                  });
                  congratulation();
                },
              ),
              commanContainer(
                text: numberlist[4].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[1] == "") {
                      numberlist[1] = numberlist[4];
                      numberlist[4] = "";
                    } else if (numberlist[3] == "") {
                      numberlist[3] = numberlist[4];
                      numberlist[4] = "";
                    } else if (numberlist[5] == "") {
                      numberlist[5] = numberlist[4];
                      numberlist[4] = "";
                    } else if (numberlist[7] == "") {
                      numberlist[7] = numberlist[4];
                      numberlist[4] = "";
                    }
                  });
                  congratulation();
                },
              ),
              commanContainer(
                text: numberlist[5].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[2] == "") {
                      numberlist[2] = numberlist[5];
                      numberlist[5] = "";
                    } else if (numberlist[4] == "") {
                      numberlist[4] = numberlist[5];
                      numberlist[5] = "";
                    } else if (numberlist[8] == "") {
                      numberlist[8] = numberlist[5];
                      numberlist[5] = "";
                    }
                  });
                  congratulation();
                },
              ),
              commanContainer(
                text: numberlist[6].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[3] == "") {
                      numberlist[3] = numberlist[6];
                      numberlist[6] = "";
                    } else if (numberlist[7] == "") {
                      numberlist[7] = numberlist[6];
                      numberlist[6] = "";
                    }
                  });
                  congratulation();
                },
              ),
              commanContainer(
                text: numberlist[7].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[4] == "") {
                      numberlist[4] = numberlist[7];
                      numberlist[7] = "";
                    } else if (numberlist[6] == "") {
                      numberlist[6] = numberlist[7];
                      numberlist[7] = "";
                    } else if (numberlist[8] == "") {
                      numberlist[8] = numberlist[7];
                      numberlist[7] = "";
                    }
                  });
                  congratulation();
                },
              ),
              commanContainer(
                text: numberlist[8].toString(),
                onTap: () {
                  setState(() {
                    if (numberlist[5] == "") {
                      numberlist[5] = numberlist[8];
                      numberlist[8] = "";
                    } else if (numberlist[7] == "") {
                      numberlist[7] = numberlist[8];
                      numberlist[8] = "";
                    }
                  });

                  congratulation();
                },
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.deepPurple.shade500,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            generate(1, 8, 8);
          });
        },
        label: const Text("Refres"),
        icon: const Icon(Icons.refresh),
      ),
    );
  }

  commanContainer({required text, required void Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          shadowColor: Colors.deepPurple.shade900,
          elevation: 15,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade500,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  congratulation() {
    if (numberlist[0] == 1 &&
        numberlist[1] == 2 &&
        numberlist[2] == 3 &&
        numberlist[3] == 4 &&
        numberlist[4] == 5 &&
        numberlist[5] == 6 &&
        numberlist[6] == 7 &&
        numberlist[7] == 8 &&
        numberlist[8] == "") {
      numberlist[8] = 9;

      setState(() {});

      var snackbar = SnackBar(
        content: const Text("Congratulation You Win The Game"),
        backgroundColor: Colors.deepPurple.shade500,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
