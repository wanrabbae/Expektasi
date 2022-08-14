import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: Text("Edit Profil",
                  style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Image.asset(
                'images/3.png',
                width: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
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
                        suffix: InkWell(
                          child: Text(
                            "verifikasi",
                            style: TextStyle(color: secondaryColor),
                          ),
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
                        suffix: InkWell(
                          child: Text(
                            "ubah",
                            style: TextStyle(color: secondaryColor),
                          ),
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
