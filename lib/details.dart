import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
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
        title: Text("Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name:  jothi",
            style: TextStyle(color: Colors.purple, fontSize: 28),
          ),
          Text(
            "Reg.No:  992116050",
            style: TextStyle(color: Colors.purple, fontSize: 28),
          ),
          Text(
            "Mail Id: 992116050@klu.ac.in",
            style: TextStyle(color: Colors.purple, fontSize: 28),
          ),
          Text(
            "Mobile No: 9042413615",
            style: TextStyle(color: Colors.purple, fontSize: 28),
          ),
          Text(
            "Date of Birth:  12/10/2000",
            style: TextStyle(color: Colors.purple, fontSize: 28),
          ),
          Text(
            "Branch:  MCA",
            style: TextStyle(color: Colors.purple, fontSize: 28),
          ),
        ],
      ),
    );
  }
}
