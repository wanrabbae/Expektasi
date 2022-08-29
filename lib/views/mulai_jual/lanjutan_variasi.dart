import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/tambah_produk.dart';
import 'package:flutter/material.dart';

class VariasiView extends StatefulWidget {
  const VariasiView({Key? key}) : super(key: key);

  @override
  State<VariasiView> createState() => _VariasiViewState();
}

class _VariasiViewState extends State<VariasiView> {
  final formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Variasi Produk",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => (TambahProduk()))));
          },
        ),
      ),
      body: VariasiForm(),
    );
  }
}

class VariasiForm extends StatefulWidget {
  const VariasiForm({Key? key}) : super(key: key);

  @override
  State<VariasiForm> createState() => _VariasiFormState();
}

class _VariasiFormState extends State<VariasiForm> {
  final formKey = GlobalKey<FormState>();
  bool isSwitched = false;
  bool isSwitched2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: new Column(
          children: [
            new Container(
              child: new Column(children: [
                new Container(
                  padding: EdgeInsets.all(28),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        new Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Berat Produk",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          controller: null,
                          autofocus: false,
                          decoration: InputDecoration(hintText: "Atur Berat"),
                        ),
                        new SizedBox(
                          height: 20,
                        ),
                        new Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Ukuran Paket",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          controller: null,
                          autofocus: false,
                          decoration: InputDecoration(hintText: "Lebar (cm)"),
                        ),
                        new SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          controller: null,
                          autofocus: false,
                          decoration: InputDecoration(hintText: "Panjang (cm)"),
                        ),
                        new SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          controller: null,
                          autofocus: false,
                          decoration: InputDecoration(hintText: "Tinngi (cm)"),
                        ),
                        new SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(right: 35.0, left: 35.0),
                  alignment: Alignment.center,
                  child: new Row(children: [
                    new Container(
                      child: Text(
                        "Regular",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(left: 150.0)),
                    new Container(
                        child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Color.fromARGB(255, 210, 153, 93),
                      activeColor: Colors.white,
                    )),
                  ]),
                ),
                new Container(
                  padding: EdgeInsets.only(right: 35.0, left: 35.0),
                  alignment: Alignment.center,
                  child: new Row(children: [
                    new Container(
                      child: Text(
                        "Hemat",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(left: 150.0)),
                    new Container(
                        child: Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                          print(isSwitched2);
                        });
                      },
                      activeTrackColor: Color.fromARGB(255, 210, 153, 93),
                      activeColor: Colors.white,
                    )),
                  ]),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
