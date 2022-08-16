import 'dart:async';

import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/dompetasi/dompetasi_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashSuccess extends StatefulWidget {
  const SplashSuccess({Key? key}) : super(key: key);

  @override
  State<SplashSuccess> createState() => _SplashSuccessState();
}

class _SplashSuccessState extends State<SplashSuccess> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => DompetasiHome())));

    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 150),
          child: new Center(
            child: Column(
              children: [
                Text(
                  'Selamat',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Aktivasi Dompetasimu berhasil!',
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Icon(
                    PhosphorIcons.checkCircleFill,
                    size: 150,
                    color: secondaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

    // return Scaffold(
    //   body: SplashScreen(
    //     backgroundColor: Colors.white,
    //     seconds: 2,
    //     title: Text(
    //       'Aktivasi Dompetasimu berhasil!',
    //       style: TextStyle(fontSize: 20),
    //       textAlign: TextAlign.center,
    //     ),
    //     image: Image.network(
    //         'https://cdn.discordapp.com/attachments/1008921423915532368/1008972737110364190/ep_success-filled.png'),
    //     photoSize: 150.0,
    //     navigateAfterSeconds: DompetasiHome(),
    //     useLoader: false,
    //   ),
    // );
  }
}
