import 'package:flutter/material.dart';
import 'package:sigmatch_io/widget/bottom_nav.dart';
import 'package:sigmatch_io/widget/panel_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../users.dart';
class findmatch extends StatefulWidget {
  @override
  _findmatchState createState() => _findmatchState();
}

class _findmatchState extends State<findmatch> {
  final panelController = PanelController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final user = users[index];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 340,
        minHeight: 150,
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        controller: panelController,
        color: Colors.transparent,
        body: PageView(
          children: users
              .map((user) => Image.asset(user.urlImage, fit: BoxFit.cover))
              .toList(),
          onPageChanged: (index) => setState(() {
            this.index = index;
          }),
        ),
        panelBuilder: (ScrollController scrollController) => PanelWidget(
          user: user,
          onClickedPanel: panelController.open,
          onClickedFollowing: () => setState(() {
            user.isFollowing = !user.isFollowing;
          }),
        ),
      ),
      bottomNavigationBar: bottom_nav(0),
    );
  }
}
