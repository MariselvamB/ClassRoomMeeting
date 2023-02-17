import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:whatsapp/home_page.dart';
import 'package:whatsapp/yy.dart';

class frontpage extends StatefulWidget {
  const frontpage({super.key});

  @override
  State<frontpage> createState() => _frontpageState();
}

class _frontpageState extends State<frontpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final _formKey = GlobalKey<FormState>();

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
            title: Text(
          'Register',
          style: TextStyle(fontSize: 21),
        )),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        (TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length > 10) {
                              return 'Please enter your Name';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            counterText: '',
                            hintText: "Enter your Name",
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: "Name",
                            labelStyle: TextStyle(
                              color: Colors.purple,
                            ),
                          ),
                          keyboardType: TextInputType.name,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 10) {
                                return 'Please Enter your Reg.No';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                hintText: "Enter your Reg.No",
                                labelText: "Reg.No",
                                labelStyle: TextStyle(
                                    decorationColor: Colors.purple,
                                    color: Colors.purple)),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.contains('@') &&
                                      !value.contains('.')) {
                                return 'Please Enter Email Address';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                hintText: "Enter Email ",
                                labelText: "Email ",
                                labelStyle: TextStyle(
                                    decorationColor: Colors.purple,
                                    color: Colors.purple)),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length != 10) {
                                return 'Please Enter your mobile No.';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                hintText: "Enter your Mobile No.",
                                labelText: "Mobile No.",
                                labelStyle: TextStyle(
                                    decorationColor: Colors.purple,
                                    color: Colors.purple)),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter your date of birth';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                hintText: "Enter your Date of birth",
                                labelText: "DOB",
                                labelStyle: TextStyle(
                                    decorationColor: Colors.purple,
                                    color: Colors.purple)),
                            keyboardType: TextInputType.datetime,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 3) {
                                return 'Please Enter your Branch';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                hintText: "Enter your Branch",
                                labelText: "Branch",
                                labelStyle: TextStyle(
                                    decorationColor: Colors.purple,
                                    color: Colors.purple)),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(50, 30)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 8, right: 8),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(flex: 1),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10, right: 10),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]))),
        ));
  }
}
