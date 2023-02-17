import 'package:flutter/material.dart';
import 'package:whatsapp/message_page.dart';

class ChatListmsg extends StatefulWidget {
  const ChatListmsg({super.key});

  @override
  State<ChatListmsg> createState() => _ChatListmsgState();
}

class _ChatListmsgState extends State<ChatListmsg>
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
        titleSpacing: 0.0,
        // ignore: prefer_const_literals_to_create_immutables
        title: Row(children: [
          const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('images/no_image.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.0),
            child: Text('Nithiya'),
          )
        ]),
        actions: [
          IconButton(
              onPressed: (() {
                print('Video Call Button Clicked');
              }),
              icon: Icon(Icons.video_call)),
          IconButton(
              onPressed: (() {
                print('Call Button Clicked');
              }),
              icon: Icon(Icons.call)),
          IconButton(
              onPressed: (() {
                print('Three Dot Button Clicked');
              }),
              icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2.0),
                        ),
                        hintText: 'Type a mesage',
                        suffixIcon: IconButton(
                            onPressed: (() {
                              print('Send Button Clicked');
                            }),
                            icon: Icon(
                              Icons.send,
                              color: Colors.purple,
                            )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
