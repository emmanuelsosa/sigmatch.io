import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class BottomSheetExample extends StatelessWidget {

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
              'Clinic Visit History',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(

                children: [
                  TableRow(children: [
                    Text('Doctor Name',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Clinic Name',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Class',style: TextStyle(fontWeight: FontWeight.bold),),

                  ]),
                  TableRow(children: [
                    Text('Omar Ahmad'),
                    Text('ABC'),
                    Text('B'),

                  ])
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
