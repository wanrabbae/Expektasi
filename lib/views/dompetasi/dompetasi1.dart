import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/dompetasi/dompetasi2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DompetasiView1 extends StatefulWidget {
  const DompetasiView1({Key? key}) : super(key: key);

  @override
  State<DompetasiView1> createState() => _DompetasiView1State();
}

class _DompetasiView1State extends State<DompetasiView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          alignment: Alignment.center,
          child: Column(
            children: [
              RichText(
                  text: TextSpan(style: TextStyle(fontSize: 40), children: [
                TextSpan(text: 'Dom', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: 'petasi', style: TextStyle(color: secondaryColor)),
              ])),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Image.network(
                    'https://cdn.discordapp.com/attachments/1008921423915532368/1008921505024974918/fontisto_wallet.png',
                    width: 100),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (DompetasiView2())));
                  },
                  child: Text(
                    "AKTIVASI SEKARANG",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: secondaryColor,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
