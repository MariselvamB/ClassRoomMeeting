import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:whatsapp/contact.dart';
import 'contact.dart';

class As extends StatefulWidget {
  const As({super.key});

  @override
  State<As> createState() => _AsState();
}

class _AsState extends State<As> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Contact? result;
  String? _contactName;
  PlatformFile? contacts;
  get platform => null;
  bool isLoading = false;

  void launchContacts() async {
    try {
      result = await platform.p('launch');
    } on PlatformException catch (e) {
      print("Failed to launch contacts: ${e.message}");
    }
    setState(() {
      isLoading = true;
    });
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
    
        },
        elevation: 10.0,
        backgroundColor: Colors.purple,
        child: isLoading
            ? CircularProgressIndicator()
            : IconButton(
                onPressed: (() {
                  launchContacts();
                }),
                icon: Icon(Icons.picture_as_pdf, color: Colors.white)),
      ),
    );
  }
}
