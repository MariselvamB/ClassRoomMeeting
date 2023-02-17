import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FileAdd extends StatefulWidget {
  const FileAdd({super.key});

  @override
  State<FileAdd> createState() => _FileAddState();
}

class _FileAddState extends State<FileAdd> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isLoading = false;
  File? fileToDisplay;

  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result != null) {
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());

        print('File naame $_fileName');
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("add button clicked");
        },
        elevation: 10.0,
        backgroundColor: Colors.purple,
        child: isLoading
            ? CircularProgressIndicator()
            : IconButton(
                onPressed: (() {
                  pickFile();
                }),
                icon: Icon(Icons.picture_as_pdf, color: Colors.white)),
      ),
      body: Column(
        children: [
          if (pickedfile != null)
            SizedBox(
                height: 200, width: 200, child: Image.file(fileToDisplay!)),
        ],
      ),
    );
  }
}
