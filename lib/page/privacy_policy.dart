import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:sigmatch_io/widget/bottom_nav.dart';
import 'package:sigmatch_io/widget/logout_bottom_widget.dart';
class privacy_policy extends StatefulWidget {
  @override
  _privacy_policyState createState() => _privacy_policyState();
}

class _privacy_policyState extends State<privacy_policy> {
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
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Privacy Policy",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
        )
    );
  }
}
