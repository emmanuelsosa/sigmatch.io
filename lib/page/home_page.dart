import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:sigmatch_io/Classes/AppTheme.dart';
import 'package:sigmatch_io/page/onboarding_page.dart';
import 'package:sigmatch_io/page/signup_page.dart';
import 'package:sigmatch_io/widget/bottom_nav.dart';
import 'package:sigmatch_io/widget/button_widget.dart';
import 'package:sigmatch_io/widget/facebook_button_widget.dart';

import 'forgepassword_page.dart';
import 'profile_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,

          leading: GestureDetector(
            onTap: () {
              goToprofile(context);
            },
            child: IconTheme(
              data: new IconThemeData(
                  color: Colors.black),
              child: Icon(
                Icons.arrow_back_ios

              ),
            ),
          ),
           // automaticallyImplyLeading: false
            actions: <Widget>[
                            Padding(
                            padding: EdgeInsets.only(right: 20.0,top: 12),
                            child: GestureDetector(
                            onTap: () {
                              goToSignUp(context);
                            },
                            child: Text("Sign Up",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Color(0XFF00a98b)),),
                           )
                          ),
                        ]
        ),

        body: Form(

            //margin: EdgeInsets.all(_minimumPadding * 2),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text("Let's Get Started",textAlign: TextAlign.center,style: AppTheme.homeScreenBoldStyle(),),
                ),

                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text("signing up or login to see",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("our top picks for you",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: FacebookButtonWidget(
                      icons: CommunityMaterialIcons.facebook,
                      text: '      Continue with facebook',
                      onClicked: () => goToFacebook(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text("OR",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                    //  style: textStyle,
                     // controller: principalController,
                      validator: (String value){
                        if(value.isEmpty){
                          return "Please Enter Principla value";
                        }

                      },
                      decoration: InputDecoration(
                          labelText: 'Email Address',
                          hintText: 'Example:- abc@gmail.com',
                         // labelStyle: textStyle,
                          errorStyle: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: 15.0
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: TextFormField(
                      obscureText: true,

                      validator: (String value) {
                        if (value.trim()
                            .isEmpty) {
                          return 'Password is required';
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Example:- abc@123',
                          // labelStyle: textStyle,
                          errorStyle: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: 15.0
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: ButtonWidget(
                      text: 'Join now',
                      onClicked: () => goToprofile(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: GestureDetector(
                        onTap: () {
                          goToForgetPassword(context);
                        },
                        child: Text("Forget Password",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.blue),)),
                  ),
                ],
        ),
      )
        )
  );

  void goToprofile(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => profilePage()),
      );
  void goToFacebook(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => profilePage()),
  );
  void goToSignUp(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => signupPage()),
  );
  void goToForgetPassword(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => forgetpasswordpage()),
  );
}
