import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatty_chat/screens/login_screen.dart';
import 'package:chatty_chat/screens/registration_screen.dart';
import 'package:chatty_chat/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'icon',
                  child: Container(
                    child: Image.asset('assets/images/logo.png'),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                      speed: const Duration(milliseconds: 200),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            NavigationButton(
              whilePressed: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
              text: 'Log In',
              color: Colors.lightBlueAccent,
            ),
            NavigationButton(
              whilePressed: () {
                Navigator.of(context).pushNamed(RegistrationScreen.routeName);
              },
              text: 'Register',
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
