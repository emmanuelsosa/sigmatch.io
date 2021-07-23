import 'package:flutter/material.dart';
import 'package:sigmatch_io/page/findMatch_page.dart';

import 'button_widget.dart';
class enable_location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle=Theme.of(context).textTheme.title;
    final node = FocusScope.of(context);
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Enable Location',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/img/Location.png')
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: ButtonWidget(
                text: 'Enable Location',
                onClicked: () => goToFindmatch(context),
              ),
            ),

          ],
        ),
      ),
    );
  }

  void goToFindmatch(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => findmatch()),
  );

}
