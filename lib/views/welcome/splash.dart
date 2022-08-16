import 'dart:async';

import 'package:expektasi/core/utils/component.dart';
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
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WelcomeOneView())));

    var assetsImage = new AssetImage('images/logo.png');
    var image = new Image(image: assetsImage, height: 350);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(color: secondaryColor),
          child: new Center(
            child: image,
          ),
        ),
      ),
    );
  }
}
