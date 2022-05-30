import 'package:flutter/material.dart';
import 'package:chitter_chatter/screens/welcome_screen.dart';
import 'package:chitter_chatter/screens/login_screen.dart';
import 'package:chitter_chatter/screens/registration_screen.dart';
import 'package:chitter_chatter/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChitterChatter());
}

class ChitterChatter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

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
