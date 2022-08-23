import 'dart:io';
import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/toko.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TambahProduk extends StatefulWidget {
  const TambahProduk({Key? key}) : super(key: key);

  @override
  State<TambahProduk> createState() => _TambahProdukState();
}

class _TambahProdukState extends State<TambahProduk> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imgTmp = File(image.path);
      setState(() => this.image = imgTmp);
    } on PlatformException catch (e) {
      print("Failed To Pick Image : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Tambah Produk",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 16.7),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => (Toko()))));
          },
        ),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Container(
                      padding: EdgeInsets.all(40.0),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 218, 218),
                          borderRadius: BorderRadius.circular(50)),
                      child: new InkWell(
                        onTap: () => pickImage(ImageSource.gallery),
                        child: Icon(
                          PhosphorIcons.plusBold,
                          size: 40,
                          color: secondaryColor,
                        ),
                      )),
                  new SizedBox(
                    width: 20.0,
                  ),
                  new Container(
                      child: new Column(
                    children: [
                      Text(
                        "Tambah",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Foto Produk",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            new Column(
              children: [
                Container(
                  padding: new EdgeInsets.all(28.0),
                  child: Column(
                    children: [
                      new TextFormField(
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          labelText: "Nama Produk",
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "masukan nama produk",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
