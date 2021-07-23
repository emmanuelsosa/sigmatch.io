import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:sigmatch_io/page/chat_page.dart';
import 'package:sigmatch_io/page/home_screen.dart';
import 'package:sigmatch_io/page/profile_page.dart';
import 'package:sigmatch_io/page/setting_page.dart';
class bottom_nav extends StatefulWidget {
  final int pageClick;
  const bottom_nav(this.pageClick);
  @override
  _bottom_navState createState() => _bottom_navState(this.pageClick);
}

class _bottom_navState extends State<bottom_nav> {
  int _selectedIndex = 0;
  //int ps=0;
  _bottom_navState(this._selectedIndex);




  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      //_selectedIndex=ps;
      print(_selectedIndex.toString());
      homePage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CommunityMaterialIcons.home_outline,
            ),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CommunityMaterialIcons.heart_outline,
            ),
            title: Text(
              '',
           ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CommunityMaterialIcons.cog_outline,
            ),
            title: Text(
              '',
            ),
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
    // ),
    );
  }
  void homePage(){
    int i=_selectedIndex;
    if(i==0){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => home_screen()),
      );
    } else if(i==1){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => chat_page()),
      );
    } else if(i==2){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => setting_page()),
      );
    }

  }

  //MaterialPageRoute(builder: (_) => profilePage()),



}
