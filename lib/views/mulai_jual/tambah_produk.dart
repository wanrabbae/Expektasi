import 'dart:io';
import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/kategori_produk.dart';
import 'package:expektasi/views/mulai_jual/lanjutan_variasi.dart';
import 'package:expektasi/views/mulai_jual/toko.dart';
import 'package:expektasi/views/mulai_jual/variasi_produk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TambahProduk extends StatefulWidget {
  const TambahProduk({Key? key}) : super(key: key);

  @override
  State<TambahProduk> createState() => _TambahProdukState();
}

class _TambahProdukState extends State<TambahProduk> {
  File? image;
  var _selectFromGalery;
  var _selectedFormCamera;
  bool onTap = false;

  final _controller = new MoneyMaskedTextController(
      decimalSeparator: '.', thousandSeparator: ',', leftSymbol: 'Rp');

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
          style: TextStyle(color: Colors.black, fontSize: 20),
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
                        onTap: () => _onPressedButton(),
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
                      const SizedBox(
                        height: 10.0,
                      ),
                      new TextFormField(
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          labelText: "Deskripsi Produk",
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "masukan deskripsi produk",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      new TextFormField(
                        autofocus: false,
                        controller: _controller,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          labelText: "Harga Produk",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      new TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          labelText: "Stock Produk",
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "0",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        ),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            new Container(
              color: secondaryColor,
              child: new Row(
                children: [
                  Padding(padding: new EdgeInsets.all(15.0)),
                  new Container(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "Kategori Produk",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 130.0,
                  ),
                  new Container(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (KategoriProduk())))),
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 35,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Pilih",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            new Container(
              color: secondaryColor,
              child: new Row(
                children: [
                  Padding(padding: new EdgeInsets.all(15.0)),
                  new Container(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "Variasi Produk",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 140.0,
                  ),
                  new Container(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (VariasiProduk())))),
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 35,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Atur",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            new Container(
              alignment: Alignment.center,
              child: new Row(children: [
                Padding(padding: new EdgeInsets.all(15.0)),
                new Container(
                  child: Text(
                    "Kondisi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                new SizedBox(
                  width: 60.0,
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 199, 132, 31),
                      borderRadius: BorderRadius.circular(10)),
                  child: new InkWell(
                    onTap: () => print("Tapped"),
                    child: Text(
                      "Baru",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10)),
                  child: new InkWell(
                    onTap: () => print("Tapped"),
                    child: Text(
                      "Pernah Dipakai",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 30.0,
            ),
            new Container(
              color: secondaryColor,
              child: new Row(
                children: [
                  Padding(padding: new EdgeInsets.all(15.0)),
                  new Container(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "Ongkos Kirim",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 140.0,
                  ),
                  new Container(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: new Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (VariasiView())))),
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 35,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Atur",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: new EdgeInsets.only(top: 100),
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
                          debugPrint("Tapped");
                        },
                        child: Text(
                          "Kembali",
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      new Expanded(
                          child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          textStyle: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 94, 70, 70)),
                          primary: Colors.grey[400],
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
      ),
    );
  }

  void _onPressedButton() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 120,
            color: Colors.transparent,
            child: Container(
              child: _buildNavigationMenu(),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20))),
            ),
          );
        });
  }

  Column _buildNavigationMenu() {
    return new Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            PhosphorIcons.camera,
            size: 20,
          ),
          title: Text("Ambil Gambar"),
          onTap: () => _selectImage(),
        ),
        ListTile(
          leading: Icon(
            PhosphorIcons.image,
            size: 20,
          ),
          title: Text("Pilih Gambar"),
          onTap: () => _selectVideo(),
        )
      ],
    );
  }

  void _selectImage() {
    setState(() {
      _selectFromGalery = pickImage(ImageSource.gallery);
    });
  }

  void _selectVideo() {
    setState(() {
      _selectedFormCamera = pickImage(ImageSource.camera);
    });
  }
}
