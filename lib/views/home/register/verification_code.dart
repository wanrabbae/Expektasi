import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/home/register/registered.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  bool _filled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                    "Kode verifikasi (OTP) kamu telah dikirim melalui SMS ke")),
            Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  "(+62) 812-3467-6789",
                  textAlign: TextAlign.center,
                )),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed:
                      // !_filled
                      //     ? null
                      //     :
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (Registered())));
                  },
                  child: Text(
                    "Lanjut",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: _filled ? secondaryColor : Colors.grey,
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Kirim ulang kode",
                  style: TextStyle(color: secondaryColor),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      )),
    );
  }
}
