import 'package:flutter/material.dart';
import 'package:sigmatch_io/widget/bottom_nav.dart';
import 'package:sigmatch_io/widget/bottom_sheet.dart';
import 'package:sigmatch_io/widget/enable_location.dart';
class home_screen extends StatefulWidget {
 // home_screen()
  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottom_nav(0),
      body: InkWell(
        onTap:(){

          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: enable_location(),
              ),
            ),
          );
        },
        child: Center(
       // alignment: Alignment.center,
        child: Image.asset('assets/img/HomeWelcome2.png')
        ),
      ),
    
        
  
    );
  }
}
