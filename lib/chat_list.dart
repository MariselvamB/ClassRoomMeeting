import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/ChatList.dart';
import 'package:whatsapp/user.dart';

class ChatList extends StatelessWidget {
  List<User> list = [
    User("Nithiya", "hello how are you?", "2:20PM"),
    User("Jothi", "Happy birthday", "12:20PM"),
    User("Maha", "Happy new year", "01/1/2020"),
    User("Keerthana", "Can you pleae check now", "03/01/2020"),
    User("Vidhya", "hello how are you?", "2:20PM"),
    User("Nisha", "Happy birthday", "12:20PM"),
    User("Viji", "Happy new year", "01/1/2020"),
    User("Alice", "Can you pleae check now", "03/01/2020"),
    User("Pavi", "hello how are you?", "2:20PM"),
    User("Mathi", "Happy birthday", "12:20PM"),
    User("Annal", "Happy new year", "01/1/2020"),
    User("meenachi", "Can you pleae check now", "03/01/2020"),
    User("Samhitha", "Can you pleae check now", "03/01/2020"),
    User("Abiramy", "hello how are you?", "2:20PM"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(list[index].dpURL + index.toString() + ".jpg"),
            ),
            title: Text(list[index].userName),
            subtitle: Text(list[index].lastMessage),
            trailing: Text(list[index].time),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatListmsg(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
