import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 100),
          width: double.infinity,
          child: Text("Isi Data Diri",
              style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 25),
                child: TextFormField(
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    hintText: "Nama Lengkap",
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
                padding: EdgeInsets.only(bottom: 25),
                child: TextFormField(
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    hintText: "Username",
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
                padding: EdgeInsets.only(bottom: 25),
                child: TextFormField(
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    hintText: "Jenis Kelamin",
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
                padding: EdgeInsets.only(bottom: 25),
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    hintText: "Tanggal Lahir",
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
                padding: EdgeInsets.only(bottom: 25),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    hintText: "Email",
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
                padding: EdgeInsets.only(bottom: 25),
                child: TextFormField(
                  style: TextStyle(fontSize: 12),
                  obscureText: _isObscure,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    hintText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
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
              Container(
                child: SizedBox(
                  width: EdgeInsets.symmetric(horizontal: 50).horizontal,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Simpan",
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
      ]),
    ));
  }
}
