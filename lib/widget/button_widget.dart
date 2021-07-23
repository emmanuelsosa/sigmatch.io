import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onClicked,
    style: ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 30),
      primary: Color(0XFF00a98b),
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
      // double.infinity is the width and 30 is the height
    ),
        //color: Theme.of(context).primaryColor,
        //shape: StadiumBorder(),
        //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Text(

          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      );
}
