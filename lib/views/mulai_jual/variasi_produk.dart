import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/tambah_produk.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VariasiProduk extends StatefulWidget {
  const VariasiProduk({Key? key}) : super(key: key);

  @override
  State<VariasiProduk> createState() => _VariasiProdukState();
}

class _VariasiProdukState extends State<VariasiProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Variasi Produk",
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
                  MaterialPageRoute(builder: ((context) => (TambahProduk()))));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(top: 35.0, right: 35.0, left: 35.0),
                alignment: Alignment.center,
                child: new Row(children: [
                  new Container(
                    child: Text(
                      "Warna",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.only(left: 150.0)),
                  new Container(
                    child: TextButton(
                      onPressed: () => print("Tapped"),
                      child: Text(
                        "Ganti",
                        style: TextStyle(fontSize: 20, color: secondaryColor),
                      ),
                    ),
                  ),
                ]),
              ),
              new Container(
                padding: EdgeInsets.only(top: 5, left: 30, right: 30),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(177, 231, 153, 70),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: new Column(
                        children: [
                          TextButton.icon(
                            onPressed: () => print("Tapped"),
                            label: Text(
                              "Tambah",
                              style: TextStyle(color: Colors.white),
                            ),
                            icon: Icon(
                              PhosphorIcons.plusBold,
                              color: secondaryColor,
                            ),
                          ),
                          new Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 3,
                                  style: BorderStyle.solid),
                            ),
                            child: new Container(
                              padding: EdgeInsets.all(30),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Text(
                                    "Foto",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Variasi",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(right: 35.0, left: 35.0),
                alignment: Alignment.center,
                child: new Row(children: [
                  new Container(
                    child: Text(
                      "Warna",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.only(left: 150.0)),
                  new Container(
                    child: TextButton(
                      onPressed: () => print("Tapped"),
                      child: Text(
                        "Ganti",
                        style: TextStyle(fontSize: 20, color: secondaryColor),
                      ),
                    ),
                  ),
                ]),
              ),
              new Container(
                padding: EdgeInsets.only(top: 5, left: 30, right: 30),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(177, 231, 153, 70),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: new Column(
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25.0))),
                                  backgroundColor: Colors.white,
                                  context: context,
                                  isScrollControlled: true,
                                  builder: ((context) {
                                    return Wrap(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: TextFormField(
                                              
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  }));
                            },
                            label: Text(
                              "Tambah",
                              style: TextStyle(color: Colors.white),
                            ),
                            icon: Icon(
                              PhosphorIcons.plusBold,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
