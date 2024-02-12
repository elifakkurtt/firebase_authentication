import 'package:firebase_authentication/pages/login.dart';
import 'package:firebase_authentication/pages/signup.dart';
import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  bool showLogIn = true;
  void toggleScreens() {
    setState(() {
      showLogIn = !showLogIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogIn) {
      return LogInPage(showSignUp: toggleScreens);
    } else {
      return SignUpPage(showLogIn: toggleScreens);
    }
  }
}
