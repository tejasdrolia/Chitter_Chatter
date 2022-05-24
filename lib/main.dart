import 'package:flutter/material.dart';
import 'package:chitter_chatter/screens/welcome_screen.dart';
import 'package:chitter_chatter/screens/login_screen.dart';
import 'package:chitter_chatter/screens/registration_screen.dart';
import 'package:chitter_chatter/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
        //  body: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes:{
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id: (context)=> LoginScreen(),
        RegistrationScreen.id: (context)=> RegistrationScreen(),
        ChatScreen.id: (context)=> ChatScreen(),
      }
    );
  }
}
