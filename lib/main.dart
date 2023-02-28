import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat2/screens/welcome_screen.dart';
import 'package:flash_chat2/screens/login_screen.dart';
import 'package:flash_chat2/screens/registration_screen.dart';
import 'package:flash_chat2/screens/chat_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyText1: TextStyle(color: Colors.black54),
      //   ),
      //),

      home: WelcomeScreen(),
      routes: {
        //'${WelcomeScreen.id}': (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
