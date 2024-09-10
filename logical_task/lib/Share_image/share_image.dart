import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class ShareFileScreen extends StatelessWidget {
  final String fileName;

  ShareFileScreen({required this.fileName});

  Future<void> shareFile() async {
    try {
      // Get the directory to save or get the file from
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$fileName';
      final file = File(filePath);

      // Check if file exists
      if (await file.exists()) {
        // Share the file
        await Share.shareFiles([file.path], text: 'Sharing file: $fileName');
      } else {
        print('File not found: $filePath');
      }
    } catch (e) {
      print('Error sharing file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Share File')),
      body: Center(
        child: ElevatedButton(
          onPressed: shareFile,
          child: Text('Share File'),
        ),
      ),
    );
  }
}
