import 'package:expektasi/views/welcome/welcome_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        navigateAfterSeconds: WelcomeOneView(),
        seconds: 5,
        image: Image.asset('images/logo.png'),
        photoSize: 200.0,
        backgroundColor: Color(0xffFDD100),
        useLoader: false,
      ),
    );
  }
}
