import 'package:chatty_chat/screens/chat_screen.dart';
import 'package:chatty_chat/screens/login_screen.dart';
import 'package:chatty_chat/screens/registration_screen.dart';
import 'package:chatty_chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider<AuthenticationProvider>(
        //   create: (_) => AuthenticationProvider(FirebaseAuth.instance),
        // ),
        // StreamProvider(
        //   create: (context) => context.read<AuthenticationProvider>().authState,
        // )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (ctx) => WelcomeScreen(),
          LoginScreen.routeName: (ctx) => LoginScreen(),
          RegistrationScreen.routeName: (ctx) => RegistrationScreen(),
          ChatScreen.routeName: (ctx) => ChatScreen(),
        },
      ),
    );
  }
}
