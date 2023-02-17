import 'package:flutter/material.dart';
import 'package:whatsapp/assesment.dart';
import 'package:whatsapp/chat_screen.dart';
import 'package:whatsapp/details.dart';
import 'package:whatsapp/file.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("ClassRoom"),
          centerTitle: false,
          actions: [
            IconButton(onPressed: (() {}), icon: Icon(Icons.search)),
            IconButton(onPressed: (() {}), icon: Icon(Icons.more_vert))
          ],
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: "DETAILS",
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "PDF",
              ),
              Tab(
                text: "ASSESS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Details(),
            ChatScreen(),
            FileAdd(),
            Assesment(),
          ],
        ),
      ),
    );
  }
}
