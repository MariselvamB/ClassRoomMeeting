import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/front_page.dart';

import 'package:whatsapp/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

bool _secureText = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 150),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length > 10) {
                        return 'Please enter User Name';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.purple,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      counterText: '',
                      hintText: "Enter User Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: "User Name",
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.purple,
                      ),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@') ||
                            !value.contains('.')) {
                          return 'Please Enter Email Address';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.purple,
                          ),
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
                              value.length < 8 ||
                              value.length > 16) {
                            return 'Please Enter Pasword';
                          }
                          return null;
                        },
                        obscuringCharacter: "*",
                        obscureText: _secureText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(_secureText
                                ? Icons.security
                                : Icons.remove_red_eye),
                            onPressed: () {
                              setState(() {
                                _secureText = !_secureText;
                              });
                            },
                          ),
                          counterText: '',
                          hintText: "Enter Password",
                          hintStyle: const TextStyle(color: Colors.purple),
                          labelText: "Password",
                          labelStyle: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                          ),
                        ),
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        maxLength: 16,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ]),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => frontpage()));
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
                      Spacer(),
                      Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ));
                              }
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 23, right: 23),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ),
                          )),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
