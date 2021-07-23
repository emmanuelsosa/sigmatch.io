import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class FacebookButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final IconData icons;

  const FacebookButtonWidget({
    Key key,
    @required this.text,
    @required this.onClicked,
    @required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Container(
      color: Colors.black,
      margin: const EdgeInsets.all(0.0),
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: new Icon(icons,color: Colors.white,),
            alignment: Alignment.center,
            padding: new EdgeInsets.all(0.0),
            onPressed: () {},
          ),
          Text(

            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
    ),
  );

   /*   ElevatedButton.icon(
    onPressed: onClicked,

    icon: Icon(
      CommunityMaterialIcons.facebook,
      color: Colors.white,
      size: 24.0,
textDirection: TextDirection.ltr,
    ),

    style: ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 20),
      primary: Color(0XFF000000),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      // double.infinity is the width and 30 is the height
    ),
    //color: Theme.of(context).primaryColor,
    //shape: StadiumBorder(),
    //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    label: Text(

      text,
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
  ); */
}
