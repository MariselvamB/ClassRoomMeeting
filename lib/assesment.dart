import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Assesment extends StatefulWidget {
  const Assesment({super.key});

  @override
  State<Assesment> createState() => _AssesmentState();
}

class _AssesmentState extends State<Assesment>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
        title: Text("Assessment"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _launchUrl,
        elevation: 10.0,
        backgroundColor: Colors.purple,
        child: Icon(Icons.note_alt, color: Colors.white),
      ),
    );
  }
}

_launchUrl() async {
  const url =
      "https://docs.google.com/forms/d/1EfRJK1pjmGQXCslAMPo1qcdBeX2NNtDUzu4_Gi8nXV4/edit";

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
