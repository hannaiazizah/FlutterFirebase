import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/onboarding_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  bool? userIsLoggedIn;

  getLoggedInState() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      setState(() {
        userIsLoggedIn = user != null;
      });
    });
  }

  @override
  void initState() {
    super.initState();

    getLoggedInState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => userIsLoggedIn != null &&
              userIsLoggedIn == true
              ? const HomeScreen()
              : const OnboardingScreen()
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
