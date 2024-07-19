import 'package:flutter/material.dart';

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
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.blue,
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
