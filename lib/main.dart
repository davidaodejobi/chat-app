import 'package:chatty_chat/screens/chat_screen.dart';
import 'package:chatty_chat/screens/login_screen.dart';
import 'package:chatty_chat/screens/registration_screen.dart';
import 'package:chatty_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => WelcomeScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        RegistrationScreen.routeName: (ctx) => RegistrationScreen(),
        ChatScreen.routeName: (ctx) => ChatScreen(),
      },
    );
  }
}
