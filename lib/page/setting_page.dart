import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigmatch_io/page/privacy_policy.dart';
import 'package:sigmatch_io/widget/bottom_nav.dart';
import 'package:sigmatch_io/widget/decativate_bottom.dart';
import 'package:sigmatch_io/widget/logout_bottom_widget.dart';
class setting_page extends StatefulWidget {

  @override
  _setting_pageState createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  bool _switchValue=true;
  bool _switchValue2=false;
double _discreteValue=100;
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  static String _valueToString(double value) {
    return value.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,


            // automaticallyImplyLeading: false
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0,top: 12),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: logout_bottom_widget(),
                          ),
                        ),
                      );
                    },
                    child: Icon(
                      CommunityMaterialIcons.vector_polyline,
                      color: Colors.black,
                    )
                  )
              ),
            ]
        ),
        bottomNavigationBar: bottom_nav(2),
        body: Form(

          //margin: EdgeInsets.all(_minimumPadding * 2),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Row(
                    children: [
                      ClipOval(

                          child: Image.asset('assets/img/user1.jpg',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,)
                      ) ,
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("Taz Kingston",style: TextStyle(fontSize: 18),),
                            ),
                            Text("@Taz kinston"),

                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text("DISCOVERY SETTINGS",textAlign: TextAlign.left,style: TextStyle(fontSize: 14,color: Colors.black),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child:  Row(

                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              color: Colors.white,
                              child: Text("Location",textAlign: TextAlign.left,style: TextStyle(fontSize: 18,color: Colors.black),),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              color: Colors.white,
                              child: Text("My Current Location",textAlign: TextAlign.right,style: TextStyle(fontSize: 18,color: Colors.grey),),
                            ),
                          ),
                        ),
                      ],
                    ),


                  ),
                  Row(

                    children: [


                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            color: Colors.white,
                            child: Text("Austn, TX",textAlign: TextAlign.right,style: TextStyle(fontSize: 12,color: Colors.grey),),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:30.0),
                    child: Text("Maximum Distance",textAlign: TextAlign.left,style: TextStyle(fontSize: 18,color: Colors.black),),
                  ),
                  Slider(
                    value: _discreteValue,
                    min: 0.0,
                    max: 100.0,
                    divisions: 5,

                    activeColor: Color(0XFF00a98b),
                    label: '${_discreteValue.round()}',
                    onChanged: (double value) {
                      setState(() {
                        _discreteValue = value;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              color: Colors.white,
                              child: Text('Gender',style: TextStyle(fontSize: 18,color: Colors.black)),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              color: Colors.white,
                              child: Text('Female',style: TextStyle(fontSize: 18,color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:30.0),
                    child: Text("Age Range",textAlign: TextAlign.left,style: TextStyle(fontSize: 18,color: Colors.black),),
                  ),
                  RangeSlider(
                    values: _currentRangeValues,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    activeColor: Color(0XFF00a98b),
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              color: Colors.white,
                              child: Text('Show me on Sigmatch',style: TextStyle(fontSize: 18,color: Colors.black)),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(

                              child: CupertinoSwitch(
                                activeColor: Color(0XFF00a98b),
                                value: _switchValue,
                                onChanged: (value) {
                                  setState(() {
                                    _switchValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text("Turrning this on will show your profile to single users near you.",style: TextStyle(fontSize: 12,color: Colors.grey))
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              color: Colors.white,
                              child: Text('Swipe with Friends',style: TextStyle(fontSize: 18,color: Colors.black)),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(

                              child: CupertinoSwitch(
                                activeColor: Color(0XFF00a98b),
                                value: _switchValue2,
                                onChanged: (value) {
                                  setState(() {
                                    _switchValue2 = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(

                      child: Text("Turning this on will allow your friends to find you and invite you to swipe together.",style: TextStyle(fontSize: 12,color: Colors.grey))),

                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              color: Colors.white,
                              child: GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) => SingleChildScrollView(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context).viewInsets.bottom),
                                          child: decactivate(),
                                        ),
                                      ),
                                    );
                                  },
                                  child:  Text('Decativate',style: TextStyle(fontSize: 10,color: Colors.black))
                              )


                            ),
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => privacy_policy()),
                                        );
                                      },
                              child: Container(
                                color: Colors.white,
                                child: Text('Privacy Policy',style: TextStyle(fontSize: 10,color: Colors.black)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}
