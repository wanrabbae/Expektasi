import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/home/register/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _filled = false;

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
          child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 50),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(PhosphorIcons.userCirclePlusFill,
                    size: 90, color: secondaryColor),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: secondaryColor, width: 3.0))),
                  child: Text(
                    "Buat akun Ekspektasi",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (text) {
                          setState(() {
                            _filled = true;
                          });
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          hintText: "No. Handphone",
                          prefixIcon: Icon(
                            PhosphorIcons.phoneFill,
                            size: 30,
                            color: secondaryColor,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              borderSide: BorderSide(
                                  color: secondaryColor, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              borderSide: BorderSide(
                                  color: secondaryColor, width: 2.0)),
                          fillColor: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: !_filled
                                ? null
                                : () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                (VerificationCode())));
                                  },
                            child: Text(
                              "Lanjut",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(10),
                              backgroundColor:
                                  _filled ? secondaryColor : Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
