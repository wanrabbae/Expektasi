import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/home/register/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Registered extends StatefulWidget {
  const Registered({Key? key}) : super(key: key);

  @override
  State<Registered> createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: secondaryColor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Akunmu berhasil\n didaftar",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      WidgetSpan(
                          child: Icon(
                        PhosphorIcons.thumbsUpFill,
                        size: 25,
                        color: secondaryColor,
                      ))
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: SizedBox(
                width: EdgeInsets.symmetric(horizontal: 100).horizontal,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (RegisterForm())));
                  },
                  child: Text(
                    "Kembali",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: secondaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
