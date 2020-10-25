import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'homePage.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.all(15.0),
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Thoughts at Home",
          body: "Get clear and diverse kinds of blogs, and use your time.",
          image: Image(
            image: AssetImage('assets/home.png'),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body: "Kids and teens can post inovative ideas.",
          image: Image(
            image: AssetImage('assets/mountain.png'),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Ideas of world",
          body:
              "Read and Comment on ideas, thoughts, and originality of people around the world.",
          image: Image(
            image: AssetImage('assets/world.png'),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text('Skip'),
      next: Icon(Icons.arrow_forward),
      done: Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: Color(0xff34495e),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
