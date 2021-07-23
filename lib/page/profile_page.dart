import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:sigmatch_io/Classes/AppTheme.dart';
import 'package:sigmatch_io/widget/button_widget.dart';


import 'home_screen.dart';
class profilePage extends StatefulWidget {
  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      body: Form(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(

              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text("Tell us about you",textAlign: TextAlign.left,style: AppTheme.homeScreenBoldStyle(),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text("Set your perferences & help us to math you with your interests",textAlign: TextAlign.left,style: TextStyle(fontSize: 18,color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text("What define you best",textAlign: TextAlign.left,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                 child: Row(
                   children: [
                     ClipRRect(
                       borderRadius: BorderRadius.circular(10.0),
                       child: Container(
                           width: 100,
                           height: 100,
                           color: Color(0xffedeff0),

                         child: Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top:20),
                               child: Icon(CommunityMaterialIcons.gender_male, size: 34),
                             ),
                             Text("Male"),

                           ],
                         )

                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: ClipRRect(

                         borderRadius: BorderRadius.circular(10.0),
                         child: Container(
                             width: 100,
                             height: 100,
                             color: Color(0xffedeff0),

                             child: Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top:20),
                                   child: Icon(CommunityMaterialIcons.gender_female, size: 34),
                                 ),
                                 Text("Female"),

                               ],
                             )

                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(10.0),
                         child: Container(
                             width: 100,
                             height: 100,
                             color: Color(0xffedeff0),

                             child: Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top:20),
                                   child: Icon(CommunityMaterialIcons.gender_male_female, size: 34),
                                 ),
                                 Text("Others"),

                               ],
                             )

                         ),
                       ),
                     ),
                   ],
                 ),
                 // child: Text("What define you best",textAlign: TextAlign.left,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: TextFormField(

                    decoration: InputDecoration(

                      suffixIcon: Icon(CommunityMaterialIcons.calendar_clock),
                        labelText: 'Calendar',
                        hintText: 'MM-DD-YY',
                        // labelStyle: textStyle,
                        errorStyle: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 15.0
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                    ),
                ),

                Align
                  (
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: _titleContainer("Interests"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Align
                    (
                    alignment: Alignment.centerLeft,
                    child: Container(
                        child: Wrap(
                          spacing: 5.0,
                          runSpacing: 3.0,
                          children: <Widget>[
                            filterChipWidget(chipName: 'Marketing'),
                            filterChipWidget(chipName: 'Finance'),
                            filterChipWidget(chipName: 'History'),
                            filterChipWidget(chipName: 'Life'),
                            filterChipWidget(chipName: 'Medical'),
                            filterChipWidget(chipName: 'Business'),
                            filterChipWidget(chipName: 'Entrepreneurship'),

                          ],
                        )
                    ),
                  ),
                ),
                Divider(color: Colors.blueGrey, height: 10.0,),

                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: ButtonWidget(
                    text: 'I am all set!',
                    onClicked: () => goToFacebook(context),
                  ),
                ),
              ],

          ),

        ),
      ),
    );

  }

}

goToFacebook(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => home_screen()),
  );
 // MaterialPageRoute(builder: (_) => bottomnav());
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );

}


class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;
  //Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(color: Colors.black,fontSize: 16.0,),
      selected: _isSelected,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            10.0),),
      backgroundColor: Color(0xffedeff0),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
          //labelStyle: TextStyle(color: Colors.white,fontSize: 16.0,);
        });
      },
      selectedColor: Color(0xff72909d),

     // selectedShadowColor: Colors.green,
     // avatar: _isSelected ? labelStyle: TextStyle(color: Color(0xff91a8b2),fontSize: 16.0,) : null,
    );
  /*  return ChipTheme(
      data: ChipTheme.of(context).copyWith(backgroundColor: Color(0xffedeff0)),
      child: ChoiceChip(
        label: const Text('Light Blue'),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0),),
        onSelected: (bool value) {
          setState(() {
            _color = value ? Color(0xff72909d) : Colors.white;
          });
        },
        selected: _color == Color(0xff72909d),
      ),
    ); */
  }
}

