import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/rendering/flex.dart';

class Free extends StatefulWidget {
  const Free({super.key});

  @override
  State<Free> createState() => _FreeState();
}

class _FreeState extends State<Free> with SingleTickerProviderStateMixin {
  late InAppWebViewController controller;
  String url = "";
  double ProgressIndicator = 0;

  @override
  void initState() {
    super.initState();
    controller = InAppWebViewController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10.0),
                child: ProgressIndicator < 1.0
                    ? LinearProgressIndicator(value: ProgressIndicator)
                    : Container()),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
            ))
          ],
        )),
      ),
    );
  }
}

class InAppWebViewController {
  void dispose() {}
}
