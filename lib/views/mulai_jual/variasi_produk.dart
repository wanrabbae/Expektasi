import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/tambah_produk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VariasiProduk extends StatefulWidget {
  const VariasiProduk({Key? key}) : super(key: key);

  @override
  State<VariasiProduk> createState() => _VariasiProdukState();
}

class _VariasiProdukState extends State<VariasiProduk> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Variasi Produk",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20),
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
                    new Expanded(
                      child: new Container(
                        padding: EdgeInsets.all(20),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Container(
                              padding: EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12))),
                              child: Text(
                                "Abu Abu",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              child: Image.network(
                                  'https://cdn.discordapp.com/attachments/1008921423915532368/1013622483372474368/image_24.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                      child: new Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(233, 234, 215, 104),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: new Column(
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.white,
                                    context: context,
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
                                                  cursorColor: secondaryColor,
                                                  decoration: const InputDecoration(
                                                      icon: Icon(PhosphorIcons
                                                          .paintBucketBold),
                                                      labelText:
                                                          "Tambah Variasi Warna",
                                                      labelStyle: TextStyle(
                                                          color: Colors.black),
                                                      hintText: "Warna",
                                                      hintStyle: TextStyle(
                                                          color: Colors.grey),
                                                      suffixIcon: Icon(
                                                          PhosphorIcons
                                                              .checkCircle))),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(20),
                                            alignment: Alignment.center,
                                            child: new Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                new Container(
                                                    padding:
                                                        EdgeInsets.all(30.0),
                                                    decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 224, 218, 218),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: new InkWell(
                                                        onTap: () => pickImage(
                                                            ImageSource.camera),
                                                        child: new Column(
                                                          children: <Widget>[
                                                            Icon(
                                                              PhosphorIcons
                                                                  .cameraBold,
                                                              size: 60,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            Text('Ambil Foto',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 17,
                                                                  color: Colors
                                                                      .grey,
                                                                ))
                                                          ],
                                                        ))),
                                                new Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20)),
                                                new Container(
                                                    padding:
                                                        EdgeInsets.all(30.0),
                                                    decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 224, 218, 218),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: new InkWell(
                                                        onTap: () => pickImage(
                                                            ImageSource
                                                                .gallery),
                                                        child: new Column(
                                                          children: <Widget>[
                                                            Icon(
                                                              PhosphorIcons
                                                                  .imageBold,
                                                              size: 60,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            Text('Dari Galeri',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 17,
                                                                  color: Colors
                                                                      .grey,
                                                                ))
                                                          ],
                                                        )))
                                              ],
                                            ),
                                          ),
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
                            DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(15),
                              dashPattern: [8, 4],
                              color: Color.fromARGB(255, 91, 79, 79),
                              padding: EdgeInsets.all(30.0),
                              strokeWidth: 2,
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
                            )
                          ],
                        ),
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
                      "Ukur",
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
                    new Expanded(
                        child: new Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "L",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )),
                    const SizedBox(
                      width: 15.0,
                    ),
                    new Expanded(
                        child: new Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(233, 234, 215, 104),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: new Column(
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.white,
                                  isScrollControlled: true,
                                  context: context,
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
                                                cursorColor: secondaryColor,
                                                maxLength: 10,
                                                decoration: const InputDecoration(
                                                    icon: Icon(PhosphorIcons
                                                        .arrowsOutCardinalBold),
                                                    labelText:
                                                        "Tambah Variasi Ukuran",
                                                    labelStyle: TextStyle(
                                                        color: Colors.black),
                                                    hintText: "Ukuran",
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    suffixIcon: Icon(
                                                        PhosphorIcons
                                                            .checkCircle))),
                                          ),
                                        ),
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
                    )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
