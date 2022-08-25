import 'dart:ffi';

import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/mulai_jual_home.dart';
import 'package:expektasi/views/mulai_jual/nomor_telepon.dart';
import 'package:expektasi/views/mulai_jual/toko.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AturInformasiToko extends StatefulWidget {
  const AturInformasiToko({Key? key});

  @override
  State<AturInformasiToko> createState() => _AturInformasiTokoState();
}

class _AturInformasiTokoState extends State<AturInformasiToko> {
  bool isTextFormFieldFilled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Atur Informasi Toko",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 16.7),
          ),
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
        body: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(28.0),
                child: new Column(
                  children: [
                    Focus(
                      child: new TextFormField(
                          textInputAction: TextInputAction.next,
                          controller:
                              new TextEditingController(text: "Asep Shop"),
                          autofocus: false,
                          style: TextStyle(color: Colors.black),
                          decoration: new InputDecoration(
                            labelText: "Nama Toko",
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: " Buat Nama Toko",
                            hintStyle: TextStyle(
                                fontSize: 12, color: Colors.grey[400]),
                          )),
                      onFocusChange: (value) => {
                        setState(() {
                          isTextFormFieldFilled = value;
                        })
                      },
                    ),
                    Padding(padding: new EdgeInsets.only(top: 20.0)),
                    Focus(
                      child: new TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: new TextEditingController(
                              text: "Jln. Kemerdekaan no. 17"),
                          autofocus: false,
                          style: TextStyle(color: Colors.black),
                          decoration: new InputDecoration(
                            labelText: "Alamat & Jasa Pengiriman",
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: "Alamat",
                            hintStyle: TextStyle(
                                fontSize: 12, color: Colors.grey[400]),
                          )),
                      onFocusChange: (value) => {
                        setState(() {
                          isTextFormFieldFilled = value;
                        })
                      },
                    ),
                    Padding(padding: new EdgeInsets.only(top: 20.0)),
                    Focus(
                      child: new TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: new TextEditingController(
                              text: "asepsuper123@gmail.com"),
                          autofocus: false,
                          style: TextStyle(color: Colors.black),
                          decoration: new InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: " Masukan Alamat Email",
                            hintStyle: TextStyle(
                                fontSize: 12, color: Colors.grey[400]),
                          )),
                      onFocusChange: (value) => {
                        setState(() {
                          isTextFormFieldFilled = value;
                        })
                      },
                    ),
                    Padding(padding: new EdgeInsets.only(top: 20.0)),
                    new Column(
                      children: [
                        Container(
                          child: SizedBox(
                            child: Stack(
                              children: [
                                Align(
                                  heightFactor: 2.5,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Nomor Telepon",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: TextButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  (NomorTelepon()))));
                                    },
                                    label: Text(
                                      "Atur",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[400]),
                                    ),
                                    icon: Icon(
                                      PhosphorIcons.plusBold,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          alignment: FractionalOffset.bottomCenter,
                          width: double.infinity,
                          padding: new EdgeInsets.only(top: 300),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Expanded(
                                  child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  textStyle: TextStyle(
                                    fontSize: 13,
                                  ),
                                  primary: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              (MulaiJual()))));
                                },
                                child: Text(
                                  "Kembali",
                                  style: TextStyle(color: Colors.black),
                                ),
                              )),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10)),
                              new Expanded(
                                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  textStyle: TextStyle(
                                      fontSize: 13,
                                      color: isTextFormFieldFilled
                                          ? Colors.white
                                          : Color.fromARGB(255, 94, 70, 70)),
                                  primary: isTextFormFieldFilled
                                      ? secondaryColor
                                      : Colors.grey[400],
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => (Toko()))));
                                },
                                child: Text(
                                  "Lanjut",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
