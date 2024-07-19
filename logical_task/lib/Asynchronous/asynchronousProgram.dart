import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AsynchronousProgram extends StatefulWidget {
  const AsynchronousProgram({super.key});

  @override
  State<AsynchronousProgram> createState() => _AsynchronousProgramState();
}

class _AsynchronousProgramState extends State<AsynchronousProgram> {
  Future<String> downloadPractice() async {
    String downloadfile = await Future.delayed(
      const Duration(seconds: 8),
      () {
        return "Your Data Complete Work";
      },
    );
    return downloadfile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Asynchronous  Program"),
        ),
        body: FutureBuilder(
          future: downloadPractice(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text("Somthing Want to wrong"));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Shimmer(
                  child: Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(150)),
                    ),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0x47E6E6FA),
                      Color(0xFFB2ACAC),
                      Color(0xFFB3B3B7),
                    ],
                    // stops: [
                    //   0.10,
                    //   0.5,
                    //   0.5,
                    // ],
                    begin: Alignment(-1.0, -0.3),
                    end: Alignment(1.0, 0.3),
                    tileMode: TileMode.clamp,
                  ));
            } else if (snapshot.hasData) {
              return Center(child: Text(snapshot.data!));
            } else {
              return const Text("Not Found");
            }
          },
        ));
  }
}
