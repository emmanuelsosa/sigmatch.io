import 'package:flutter/material.dart';
import 'package:sigmatch_io/widget/bottom_nav.dart';

import 'chat_room.dart';
class chat_page extends StatefulWidget {
  @override
  _chat_pageState createState() => _chat_pageState();
}

class _chat_pageState extends State<chat_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottom_nav(1),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => chat_room()),
          );
        },
        child: Center(
          child: Image.asset('assets/img/NoMessage.png')
        ),
      ),
    );
  }
}
