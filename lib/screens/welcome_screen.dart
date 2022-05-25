import 'package:chitter_chatter/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createSt ate() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState(){
    super.initState();
    
    controller=AnimationController
      (
      duration: Duration(seconds: 1),
      vsync: this,
      );
    animation= CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.withOpacity(controller.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                   Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo1.png'),
                      height: animation.value*100,
                    ),
                  ),

                   Text(
                    'Chitter-Chatter',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
