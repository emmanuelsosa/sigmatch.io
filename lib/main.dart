import 'package:flutter/material.dart';

import 'page/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIGMATCH.IO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnBoardingPage()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          color: Color(0xFF043374),
          alignment: Alignment.center,
          child: Image.asset('assets/img/logo.png')
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
