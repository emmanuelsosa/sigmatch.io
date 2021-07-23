import 'package:flutter/material.dart';
import 'package:sigmatch_io/page/home_page.dart';
class logout_bottom_widget extends StatelessWidget {
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
              'You are about to logout',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold

              ),
            ),

            GestureDetector(
    onTap: () {
      goToLogout(context);
    },
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Container(
                  height: 60,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.red, width: 2.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.red,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  void goToLogout(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => HomePage()),
  );

}
