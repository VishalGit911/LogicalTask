import 'package:flutter/material.dart';

class SyncrounsProgram extends StatefulWidget {
  const SyncrounsProgram({super.key});

  @override
  State<SyncrounsProgram> createState() => _SyncrounsProgramState();
}

class _SyncrounsProgramState extends State<SyncrounsProgram> {
  Future<String> downloadPractice() async {
    String downloadfile = await Future.delayed(
      Duration(seconds: 8),
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
          title: Text("Syncrouns Program"),
        ),
        body: FutureBuilder(
          future: downloadPractice(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("Somthing Want to wrong"));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(child: Text(snapshot.data!));
            }
          },
        ));
  }
}
