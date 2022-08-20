import 'package:expektasi/core/utils/component.dart';
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
          onPressed: () => Navigator.pop(context),
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
            child: Expanded(
                child: Text(
              "Untuk Mulai berjualan, daftar sebagai penjual dengan Melengkapi informasi yang diperlukan",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )),
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

class AturInformasiToko extends StatefulWidget {
  const AturInformasiToko({Key? key}) : super(key: key);

  @override
  State<AturInformasiToko> createState() => _AturInformasiTokoState();
}

class _AturInformasiTokoState extends State<AturInformasiToko> {
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
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(28.0),
                child: new Column(
                  children: [
                    new Container(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nama Toko",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    new TextFormField(
                        validator: null,
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: " Buat Nama Toko",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        )),
                    Padding(padding: new EdgeInsets.only(top: 20.0)),
                    new Container(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Alamat & Jasa Pengiriman",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    new TextFormField(
                        validator: null,
                        initialValue: "",
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Isi Alamat",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        )),
                    Padding(padding: new EdgeInsets.only(top: 20.0)),
                    new Container(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    new TextFormField(
                        validator: null,
                        initialValue: "",
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Isi Alamat Email",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        )),
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
                                    padding: EdgeInsets.only(
                                      top: 20,
                                      bottom: 20,
                                    ),
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                    primary: Colors.black,
                                    side: BorderSide(
                                      width: 2,
                                      color: Colors.grey,
                                    )),
                                onPressed: () {},
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
                                    padding: EdgeInsets.only(
                                      top: 20,
                                      bottom: 20,
                                    ),
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                    primary: Colors.grey[400],
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.grey,
                                    )),
                                onPressed: () {},
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

class NomorTelepon extends StatefulWidget {
  const NomorTelepon({Key? key}) : super(key: key);

  @override
  State<NomorTelepon> createState() => _NomorTeleponState();
}

class _NomorTeleponState extends State<NomorTelepon> {
  bool isTextFiledFocus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Tambah No.Handphone",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 16.7),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[
                Focus(
                  child: new TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: secondaryColor),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          PhosphorIcons.phoneBold,
                          color: secondaryColor,
                        ),
                        hintText: "No.Handphone Baru"),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                  onFocusChange: (hasFocus) {
                    setState(() {
                      isTextFiledFocus = hasFocus;
                    });
                  },
                ),
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: new Container(
                    margin: EdgeInsets.only(top: 13),
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (Verification()))));
                      },
                      child: Text(
                        "Lanjut",
                        style: TextStyle(
                            color: isTextFiledFocus
                                ? Colors.white
                                : Color.fromARGB(255, 130, 107, 107)),
                      ),
                      color:
                          isTextFiledFocus ? secondaryColor : Colors.grey[400],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  bool _filled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Masukan Kode Verifikasi",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 16.7),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.symmetric(vertical: 50),
          padding: new EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              new Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                    "Kode Verifikasi (OTP) Kamu telah dikirim melalui SMS ke"),
              ),
              new Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text(
                    "(+62) 812-3467-6789",
                    textAlign: TextAlign.center,
                  )),
              new Container(
                margin: EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed:
                        // !_filled
                        // ?null
                        // :
                        () {},
                    child: Text(
                      "Lanjut",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor:
                            _filled ? secondaryColor : Colors.grey[400],
                        padding: EdgeInsets.all(10.0)),
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
        ),
      ),
    );
  }
}
