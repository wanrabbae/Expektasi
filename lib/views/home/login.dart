import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/navigator_helper.dart';
import 'package:expektasi/views/home/register/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;

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
                  Icon(PhosphorIcons.userCircleFill,
                      size: 90, color: secondaryColor),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: secondaryColor, width: 3.0))),
                    child: Text(
                      "Login dengan akun \n Ekspektasi",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintText: "No. Handphone/Email/Username",
                        prefixIcon: Icon(
                          PhosphorIcons.userCircleBold,
                          size: 30,
                          color: secondaryColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide:
                                BorderSide(color: secondaryColor, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide:
                                BorderSide(color: secondaryColor, width: 2.0)),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(fontSize: 12),
                      obscureText: _isObscure,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintText: "Password",
                        prefixIcon: Icon(
                          PhosphorIcons.lockBold,
                          size: 30,
                          color: secondaryColor,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: secondaryColor,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide:
                                BorderSide(color: secondaryColor, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide:
                                BorderSide(color: secondaryColor, width: 2.0)),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Lupa Password?",
                  style: TextStyle(color: Colors.black, fontSize: 9),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (Register())));
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    width: EdgeInsets.symmetric(horizontal: 60).horizontal,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "LOGIN",
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
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
                child: Column(
              children: [
                Text(
                  "Atau masuk dengan",
                  style: TextStyle(fontSize: 11),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ))),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 120,
                    child: Row(
                      children: [
                        Image.network(
                          'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
                          width: 20,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                        Text(
                          "Google account",
                          style: TextStyle(fontSize: 9, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
