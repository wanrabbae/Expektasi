import 'package:date_time_picker/date_time_picker.dart';
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
  String dropdownValue = 'Pilih';
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
                  padding: EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nama",
                          style: TextStyle(color: secondaryColor, fontSize: 12),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          hintText: "Nama Lengkap",
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
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Username",
                          style: TextStyle(color: secondaryColor, fontSize: 12),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          hintText: "Username",
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
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Jenis Kelamin",
                          style: TextStyle(color: secondaryColor, fontSize: 12),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          border: Border.all(color: secondaryColor, width: 2.0),
                        ),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 12,
                          iconEnabledColor: secondaryColor,
                          elevation: 0,
                          hint: Text("Pilih Jenis Kelamin"),
                          style: TextStyle(color: Colors.black),
                          underline: Container(
                            height: 0,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Pilih', 'Laki-laki', 'Perempuan']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tanggal Lahir",
                          style: TextStyle(color: secondaryColor, fontSize: 12),
                        ),
                      ),
                      DateTimePicker(
                        initialValue: '',
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              borderSide: BorderSide(
                                  color: secondaryColor, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              borderSide: BorderSide(
                                  color: secondaryColor, width: 2.0)),
                        ),
                        onChanged: (val) => print(val),
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: (val) => print(val),
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(color: secondaryColor, fontSize: 12),
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          hintText: "Email",
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
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(color: secondaryColor, fontSize: 12),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 12),
                        obscureText: _isObscure,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          hintText: "Password",
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
                              borderSide: BorderSide(
                                  color: secondaryColor, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              borderSide: BorderSide(
                                  color: secondaryColor, width: 2.0)),
                          fillColor: Colors.white,
                        ),
                      ),
                    ],
                  )),
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
