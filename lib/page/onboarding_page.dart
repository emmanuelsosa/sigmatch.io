import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sigmatch_io/page/home_page.dart';
import 'package:sigmatch_io/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Find the like minded people',
              body: 'Eu fermentum, sodales non feugiat id pellentesque congue. Mauris cursus id in in condimentum.',
              image: buildImage('assets/img/arrow.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Unlock the common interests',
              body: 'Volutpat cursus vitae at ac faucibus felis erat platea tortor. Platea felis pharetra, velit laoreet scelerisque volutpat feugiat.',
              image: buildImage('assets/img/lock.png'),
              decoration: getPageDecoration(),
            ),
         /*  PageViewModel(
              title: 'Simple UI',
              body: 'For enhanced reading experience',
              image: buildImage('assets/manthumbs.png'),
              decoration: getPageDecoration(),
            ), */
            PageViewModel(
              title: 'Match with people who have higher compatibility',
              body: 'Nisl facilisis et volutpat amet feugiat dignissim massa commodo. sit cras purus, quis est.',
              footer: ButtonWidget(
                text: 'Get Started',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/img/hart.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text(' ', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xFF00a98b),
        size: Size(10, 10),
        activeSize: Size(32, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(

        titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
        ),

        bodyTextStyle: TextStyle(fontSize: 20),

    descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
