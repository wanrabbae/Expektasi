import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/home/profile/profile.dart';
import 'package:expektasi/views/mulai_jual/atur_informasi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MulaiJual extends StatefulWidget {
  const MulaiJual({Key? key}) : super(key: key);

  @override
  State<MulaiJual> createState() => _MulaiJualState();
}

class _MulaiJualState extends State<MulaiJual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Selamat Datang di Expektoko!",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 16.7),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => (ProfileView()))));
          },
        ),
      ),
      body: Column(
        children: [
          new Container(
            width: 400,
            height: 250,
            decoration: BoxDecoration(
                color: secondaryColor,
                image:
                    DecorationImage(image: AssetImage('images/expektoko.png'))),
          ),
          new Container(
            padding: EdgeInsets.all(32),
            child: Text(
              "Untuk Mulai berjualan, daftar sebagai penjual dengan Melengkapi informasi yang diperlukan",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => (AturInformasiToko()))));
                    },
                    child: Text("Mulai Pendaftaran"),
                    style: ElevatedButton.styleFrom(
                        primary: secondaryColor, onPrimary: Colors.black),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
