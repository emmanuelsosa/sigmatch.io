import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:sigmatch_io/Classes/AppTheme.dart';
import 'package:sigmatch_io/page/onboarding_page.dart';
import 'package:sigmatch_io/widget/button_widget.dart';
import 'package:sigmatch_io/widget/facebook_button_widget.dart';

import 'home_page.dart';
class signupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,

          leading: GestureDetector(
            onTap: () {
              goToSignIn(context);
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
                    goToSignIn(context);
                  },
                  child: Text("Sign In",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Color(0XFF00a98b)),),
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
                  padding: EdgeInsets.only(left: 10,right: 10,top: 20),
                  child: Text("Create an account",textAlign: TextAlign.center,style: AppTheme.homeScreenBoldStyle(),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text("Create your account to fully",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("experience the app",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    //  style: textStyle,
                    // controller: principalController,
                    validator: (String value){
                      if(value.isEmpty){
                        return "Please Enter Full Name value";
                      }

                    },
                    decoration: InputDecoration(
                        labelText: 'Full Name',
                        hintText: 'Example:- Jon David',
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
                  padding: const EdgeInsets.only(top: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    //  style: textStyle,
                    // controller: principalController,
                    validator: (String value){
                      if(value.isEmpty){
                        return "Please Enter Email Address";
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
                    text: 'Sign Up',
                    onClicked: () => goToSignIn(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text("OR Sign in with",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20),

                  child: FacebookButtonWidget(
                    icons: CommunityMaterialIcons.facebook,
                    text: '      Continue with Facebook',
                    onClicked: () => goToFacebook(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: FacebookButtonWidget(
                    icons: CommunityMaterialIcons.google,
                    text: '      Continue with Google',
                    onClicked: () => goToFacebook(context),
                  ),
                ),
              ],
            ),
          )
      )
  );

  void goToFacebook(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => OnBoardingPage()),
  );
  void goToSignIn(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => HomePage()),
  );
}
