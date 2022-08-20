import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/atur_informasi.dart';
import 'package:flutter/material.dart';

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
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => (Notification()))));
                    },
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

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
              padding: EdgeInsets.only(bottom: 7),
              child: Align(
                alignment: Alignment.center,
                child: Text("Asep Shop",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 17,
                        fontWeight: FontWeight.w600)),
              )),
          new Container(
            padding: EdgeInsets.only(bottom: 7),
            child: Align(
              alignment: Alignment.center,
              child: Text("(+62)823-3344-4555",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: secondaryColor)),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(bottom: 7),
            child: Align(
              alignment: Alignment.center,
              child: Text("Nomor Handphone Anda Sudah Terdaftar di Expektasi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(15.0),
                child: new Align(
                  alignment: FractionalOffset.topCenter,
                  child: new Container(
                    margin: EdgeInsets.only(top: 13),
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (AturInformasiToko()))));
                      },
                      child: Text(
                        "Lanjut",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: secondaryColor,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
